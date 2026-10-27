# CFM-MPPI bridge: bounded empty-scene experiment

This separate `cfm_mppi` planner runs the pretrained model in
`/home/azaro/cfm_mppi` and controls RTO through Arena's existing MBF adapter.
The dummy planner and all existing navigation algorithms remain unchanged.

The later `cfm_mppi_continuous` option is described in
[CFM_CONTINUOUS.md](CFM_CONTINUOUS.md). This document records the earlier bounded
stop/compute/move experiment; check the benchmark config for the active option.

## Run

The benchmark configuration currently selects:

```yaml
suite:
  config: dummy_motion.yaml
contest:
  config: cfm_mppi.yaml
general:
  simulator: flatland
```

Build and launch from the Arena workspace:

```bash
cd /home/azaro/arena_ws
source devel/setup.bash
catkin build
source devel/setup.bash
roslaunch arena_bringup start_arena.launch tm_modules:=benchmark
```

Allow the initial benchmark instance to close and its replacement to finish
starting. Inspect `/rto/cfm_mppi_bridge/status`; wait for `event: ready` and
`/task_generator_setup_finished=true`. Then, in another sourced terminal:

```bash
rosservice call /rto/cfm_mppi_bridge/enable '{}'
```

The node starts disabled. Each enable permits a bounded experiment: at most
0.18 m displacement or 30 wall seconds, with speed capped at 0.1 m/s and yaw rate
capped at 0.3 rad/s. Each accepted inference result is applied for 0.2 wall
seconds; the node then publishes zero and waits for measured motion to settle
before taking another observation. To stop immediately:

```bash
rosservice call /rto/cfm_mppi_bridge/stop '{}'
```

To reset the scene, use `rosservice call /reset_task '{}'`. Reset requires a new
enable; it never resumes automatically. To stop the simulator use the user's
normal `rosnode kill -a` command.

The normal selector also recognizes `local_planner:=cfm_mppi`; its enable service
requires `map_empty`, scenario obstacle mode, and `dummy_motion.json`. These
checks constrain this initial bridge to the supplied empty test scene.

## Architecture

```text
Arena /rto/odom + /rto/move_base_simple/goal
  -> ROS bridge (system Python 3.8), transformed into map coordinates
  -> newline-delimited JSON over private stdin/stdout pipes
  -> persistent pretrained worker (existing CFM Python 3.11 environment)
  -> Transformer + guided flow matching + MPPI, empty obstacle tensors
  -> first [v, omega] returned with request ID and reset generation
  -> bridge applies experiment limits and a short command pulse
  -> /rto/learned_cmd_vel
  -> existing TrajectoryPlannerROS adapter inside MBF
  -> /rto/cmd_vel_internal
  -> separate guarded CFM relay
  -> /rto/cmd_vel
  -> Flatland RTO
```

The worker loads `output_dir/cfm_transformer/checkpoint.pth` once. Its repository,
Python executable, device, and sample count are specified in
`mbf_cfm_mppi.launch`. Defaults are the existing CFM environment, CPU, and 20
candidates. No ML packages are installed into Arena's Python environment. The
bridge removes inherited `PYTHONPATH` and `PYTHONHOME` from the worker's child
environment to keep ROS's Python paths separate.

Each request uses measured `[x, y, yaw]` and an Arena `[goal_x, goal_y]`, both in
the map frame. The worker supplies `[1, 0, 2]` obstacle position/velocity tensors
for this explicitly empty scene. It preserves the reference model's 80-step
horizon, 0.1-second prediction step, scale 10, and guidance settings. It creates
a new MPPI solver and fresh candidate noise for each request. Consequently no
shrinking-horizon cache survives between requests, while the model stays loaded.
This permits repeated fresh planning calls without modifying the original MPPI
implementation or assuming that its finite evaluator is an infinite controller.

## Delayed results and stops

The ROS loop publishes commands at 20 Hz independently of the inference thread.
It publishes zero during computation. It only requests inference once measured
linear/angular motion is below 0.02. A response must match both the request ID
and reset generation. It is rejected if it is non-finite, computation exceeds
10 seconds, current odometry is older than 0.5 seconds, the robot moved more than
0.03 m or 0.1 rad since the request, or the goal changed. Rejection disables the
test and publishes zero.

The existing C++ adapter caches commands indefinitely. The CFM relay therefore
requires both learned and MBF messages to be less than 0.35 wall seconds old,
finite, within the experiment limits, and mutually matching. It permits only
linear.x and angular.z; all other components must be zero. A zero learned
command masks a cached nonzero MBF command immediately on the relay's next tick.
The bridge never publishes directly to the robot's final velocity topic.

Both ROS nodes listen to `/reset_start` and `/reset_end` (`std_msgs/Empty`) and
`/scenario_reset` (`std_msgs/Int16`). Reset clears commanded motion and invalidates
in-flight inference. The bridge discards its robot/goal observations and requires
fresh data plus another enable. Since each worker request starts a fresh plan,
there are no worker histories to carry across reset. Worker errors disable the
bridge; shutdown publishes zero and terminates its worker process. The relay
also publishes zeros on shutdown and is required by the navigation launch.

## Verified results

- Full workspace build: **143/143 packages passed**; output saved in
  `/tmp/arena_cfm_build.log`.
- Five CFM bridge/relay safety tests passed, including late reset results, moved
  robot/stale odometry, malformed results, timeout, and relay command masking.
- The five existing dummy safety tests still passed.
- A persistent-worker protocol check passed two consecutive requests with
  distinct IDs/reset generations and correctly rejected malformed state input.
- Arena completed its normal benchmark restart and became stably ready. The CFM
  bridge, worker, intended MBF controller, scan utility, and relay were active.
  No dummy or LfLH policy node was active.
- The sole publishers of the command chain were the CFM bridge on
  `/rto/learned_cmd_vel`, MBF on `/rto/cmd_vel_internal`, and the guarded relay on
  `/rto/cmd_vel`. Flatland consumed the final topic.
- Effective MBF controller frequency was **10 Hz**.

Physical motion measured from Flatland odometry:

| Initial (x, y), m | Final (x, y), m | Displacement |
| --- | --- | --- |
| (5.000000, 5.000000) | (5.186434, 5.015275) | 0.187059 m |

The run accepted 22 pretrained inference results. The first took 1.20 seconds;
subsequent calls took approximately 0.61–0.69 seconds on CPU. Each of 22 sampled
inference waiting intervals had zero final velocity commands. Learned, internal,
and final commands all stayed within the configured limits. After stopping, a
further two-second observation measured 0.0 m displacement and zero final
commands.

A second enable was interrupted by a real `/reset_task` call during inference.
All reset events were processed, the in-flight result was discarded, and the
robot returned to (5.000000, 5.000000). After settling, another two-second
observation measured 0.0 m displacement with zero commands and no automatic
resumption. Full samples are in `/tmp/arena_cfm_bridge_results.json`.

Run local safety checks in a sourced Arena terminal:

```bash
python3 $(rospack find arena_bringup)/scripts/test_cfm_mppi_bridge.py
python3 $(rospack find arena_bringup)/scripts/test_dummy_learning_planner.py
```

## Scope and next work

This proves that live Arena observations can reach the pretrained CFM pipeline
and its outputs can physically move RTO through MBF. It is an empty-scene
stop/compute/move experiment, not continuous 10 Hz navigation or goal-reaching
validation. Command limits and 0.2-second execution pulses deliberately differ
from executing the reference evaluator's 0.1-second simulated steps verbatim.
RTO's second-order dynamics also differ from the worker's unicycle prediction.

Before running among obstacles, add real obstacle positions and velocities in
the same frame, evaluate collision margins, and account for observation age
during inference. Continuous navigation additionally needs a measured inference
budget and an explicit rolling-horizon/state-history design. The current bridge
enforces the empty-scenario restriction rather than silently ignoring obstacles
in arbitrary scenes.

## Files for this bridge

| Repository/package | File | Purpose |
| --- | --- | --- |
| CFM-MPPI | `cfm_mppi/evaluation/arena_worker.py` | Persistent pretrained worker; fresh horizon per request |
| `arena_bringup` | `scripts/cfm_mppi_bridge.py` | ROS observations, TF conversion, worker IPC, bounded controls |
| `arena_bringup` | `scripts/cfm_cmd_vel_relay.py` | Freshness, matching, bounds, and reset guard |
| `arena_bringup` | `scripts/test_cfm_mppi_bridge.py` | Five safety regression tests |
| `arena_bringup` | `CMakeLists.txt` | Install the two new ROS executables |
| `arena_bringup` | `package.xml` | Declare the TF dependency |
| `arena_bringup` | `configs/benchmark/contests/cfm_mppi.yaml` | Separate contestant |
| `arena_bringup` | `configs/benchmark/config.yaml` | Select CFM while retaining the empty dummy suite |
| `arena_bringup` | `CFM_MPPI_BRIDGE.md` | Commands, design, measurements, and limits |
| `arena_bringup` | `DUMMY_LEARNING_PLANNER.md` | Point to the separate CFM integration report |
| `arena_simulation_setup` | `launch/mbf/planners/local/mbf_cfm_mppi.launch` | Normal planner-selection entry |
| `arena_simulation_setup` | `configs/mbf/local/cfm_mppi_params.yaml` | Separate MBF controller configuration |

The existing empty `dummy_motion` suite/scenario is reused unchanged. Arena
updates task-generator YAML, benchmark logs, and resume state at runtime as it
normally does. The pre-test benchmark configuration is saved in
`/tmp/arena_cfm_benchmark_config_before.yaml`; select
`dummy_learning_planner.yaml` again to return to the dummy contestant. Existing
CFM notebook edits were preserved. No shared C++ code, robot dynamics, existing
planner algorithms, or Python environments were changed.
