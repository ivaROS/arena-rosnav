# Continuous empty-scene goal approach

The separate `cfm_mppi_continuous` planner executes time-indexed pretrained
control sequences while another sequence is computed. It retains the existing
ROS bridge, model worker, MBF adapter, and guarded velocity route. The bounded
`cfm_mppi` experiment and dummy planner remain available unchanged.

Live-obstacle experiments are documented separately in
[CFM_OBSTACLES.md](CFM_OBSTACLES.md), including unsuccessful and successful runs.

## Run

The current benchmark configuration selects:

```yaml
suite:
  config: cfm_navigation.yaml
contest:
  config: cfm_mppi_continuous.yaml
general:
  simulator: flatland
```

Launch using the normal command:

```bash
cd /home/azaro/arena_ws
source devel/setup.bash
catkin build
source devel/setup.bash
roslaunch arena_bringup start_arena.launch tm_modules:=benchmark
```

Allow the normal initial shutdown/relaunch cycle and full startup. Once
`/task_generator_setup_finished` is true, enable in another sourced terminal:

```bash
rosservice call /rto/cfm_mppi_continuous/enable '{}'
```

The service refuses enablement while the worker is loading, data are missing,
or a reset/inference request is still pending. Motion starts disabled and stops
within 0.1 m of the goal. The empty scenario starts RTO at (5, 5, 0), with goal
(5.6, 5, 0). Arena's episode goal radius is 0.05 m so it does not reset the robot
before the bridge's own goal-stop check can be measured.

```bash
rosservice call /rto/cfm_mppi_continuous/stop '{}'
rosservice call /reset_task '{}'
```

Reset requires fresh observations and another explicit enable. The test suite
allows three episodes; reaching its episode/reset limit ends the benchmark.
Relaunch the benchmark to start a fresh run. To stop all simulator nodes, use
`rosnode kill -a` in a sourced terminal.

## Plan execution and freshness

Each request sends map-frame robot pose, goal, odometry timestamp, request ID,
reset generation, and a sequence-mode flag to the existing model worker. The
worker keeps the model loaded but starts a fresh 80-step MPPI plan every time.
For sequence mode, MPPI itself uses forward speed bounds [0, 0.1] m/s and yaw
rate bounds [-0.3, 0.3] rad/s. It returns all 80 controls, their 81 predicted
unicycle poses, and dt=0.1 s. It does not change the pretrained network or any
original planning algorithm. The earlier single-action worker mode is retained.

The ROS loop runs at 20 Hz and MBF remains at 10 Hz. Initially the robot waits
at rest for its first plan, which begins on receipt. During execution, replacement
plans are aligned to their observation's simulation timestamp. The bridge skips
the controls whose execution times already passed during inference. It compares
the corresponding predicted pose against current measured pose before accepting
the replacement. It also checks tracking against the executing plan each tick.

An accepted plan expires two wall seconds after its request. Expiry, simulation
time reversal, exhausted controls, or lost odometry cause zero commands. A fresh
plan can restart after an expiry once observations and tracking permit it. Large
tracking error, malformed output, worker failure, a changed goal, or the test
limits disable execution. The limits are 120 wall seconds or 2 m displacement
per enable. Existing relay bounds, freshness checks, and zero-command masking
remain in force; there is still one intentional route to Flatland through MBF.

Reset clears the current plan and increments the request generation. Results
from previous generations cannot resume motion. The shared bridge owns process
lifecycle and frame transforms; the separate continuous subclass owns sequence
acceptance, playback, and goal stopping.

## Runtime validation

- Full workspace build: **143/143 packages succeeded**, saved in
  `/tmp/arena_cfm_continuous_build.log`.
- **17 local safety tests passed:** seven sequence-execution checks, five bridge
  checks, and five existing dummy checks.
- Worker protocol checks returned two independent 80-control/81-pose plans,
  with finite outputs, matching request generations, and correct velocity bounds.
- Arena completed its benchmark restart and ran only the continuous CFM policy.
  The bridge, MBF, and relay were respectively the sole publishers of
  `learned_cmd_vel`, `cmd_vel_internal`, and `cmd_vel`.

| Start (x, y), m | Goal (x, y), m | Settled position (x, y), m | Goal distance |
| --- | --- | --- | --- |
| (5.000000, 5.000000) | (5.600000, 5.000000) | (5.511061, 5.004308) | 0.089043 m |

Goal stopping occurred after approximately 41.7 seconds, with 62 accepted plans.
The robot moved during 37 measured inference intervals. There was one plan
expiry and recovery during navigation, so the run was not perfectly uninterrupted.
The first inference took 1.19 seconds; subsequent calls took approximately
0.55–0.68 seconds. No speed or yaw limit violations were measured. After goal
stopping, a further two-second observation showed 0.0 m displacement and zero
final commands.

A real reset during replanning discarded the in-flight result and left the
robot stationary at (5, 5), with no automatic resumption. For the stalled-worker
check, the worker was paused while measured speed was 0.020 m/s. The robot
continued within the remaining valid plan, then stopped after expiry at
(5.042089, 4.999885). A further stationary observation measured 0.0 m movement.
The worker was resumed afterward and the bridge explicitly stopped, preventing
a delayed result from restarting motion. Measurements and samples are saved in
`/tmp/arena_cfm_continuous_results.json`.

Run the local sequence checks:

```bash
python3 $(rospack find arena_bringup)/scripts/test_cfm_mppi_continuous.py
```

## Files and limits

New files are `scripts/cfm_mppi_continuous.py`, its test script,
`configs/benchmark/contests/cfm_mppi_continuous.yaml`,
`configs/benchmark/suites/cfm_navigation.yaml`, and this report in
`arena_bringup`; plus `launch/mbf/planners/local/mbf_cfm_mppi_continuous.launch`
and `worlds/map_empty/scenarios/cfm_navigation.json` in `arena_simulation_setup`.
`arena_bringup/CMakeLists.txt` installs the new executable. The shared worker's
optional sequence protocol is implemented in
`/home/azaro/cfm_mppi/cfm_mppi/evaluation/arena_worker.py`.

The benchmark selector now chooses this experiment; its previous content is
saved in `/tmp/arena_cfm_continuous_config_before.yaml`. Arena updates its usual
task-generator configuration and runtime files. No existing C++ planner, robot
dynamics, or Python environment was changed.

This validates short goal approach in an explicitly empty scene. It still uses
unicycle predictions for RTO's second-order dynamics and a slow CPU planner;
the guarded MBF route can insert zero-command intervals while updated commands
propagate. It is not validation of obstacle avoidance or pedestrian navigation.
The next extension needs obstacle positions/velocities in the same coordinate
frame, and must include their motion during inference. The current enable
restriction requires the supplied empty `cfm_navigation.json` scenario.
