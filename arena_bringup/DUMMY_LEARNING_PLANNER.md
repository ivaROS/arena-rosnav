# Minimal external Python planner

This implements a deliberately enabled, bounded motion test for RTO in Flatland.
It does not navigate to a goal. No existing planner, robot model, or shared C++
implementation was changed.

The later, separate `cfm_mppi` integration is documented in
[CFM_MPPI_BRIDGE.md](CFM_MPPI_BRIDGE.md). This document records the dummy baseline;
check `configs/benchmark/config.yaml` for the currently selected contestant.

## Launch and enable

Source the workspace in each terminal:

```bash
cd /home/azaro/arena_ws
source devel/setup.bash
```

The normal planner selector accepts:

```bash
roslaunch arena_bringup start_arena.launch local_planner:=dummy_learning_planner model:=rto map_file:=map_empty
```

That selects the dummy planner but retains the current task-generator obstacle
configuration. For the isolated empty motion scenario, use the benchmark setup
below. Keep the default `pedsim` entity manager: this checkout's `flatland` entity
manager raises `NotImplementedError` while spawning world walls, even though the
simulator itself is Flatland.

The existing benchmark mechanism reads `configs/benchmark/config.yaml` and
restarts Arena with the contestant's planner. A command-line `local_planner`
argument alone does not override that contestant. Two new files provide an
isolated contestant and an empty scene. The current configuration selects these
values for the dummy test:

```yaml
suite:
  config: dummy_motion.yaml
contest:
  config: dummy_learning_planner.yaml
general:
  simulator: flatland
```

Then run the user's normal command:

```bash
roslaunch arena_bringup start_arena.launch tm_modules:=benchmark
```

Allow the first instance to close and the benchmark to relaunch. Startup can take
one or two minutes, followed by another minute for the replacement instance.
Wait for `/task_generator_setup_finished` and the dummy node, not merely the first
window. The supplied scenario starts at (5, 5, 0), with a distant goal to activate
MBF and no spawned obstacles. It allows three 300-second episodes so deliberate
reset checks do not immediately finish the benchmark.

The node continuously publishes zero until explicitly enabled with fresh odometry:

```bash
rosservice call /rto/dummy_learning_planner/enable '{}'
```

Each enable requests 0.1 m/s forward at 10 Hz. All other Twist components are zero.
The test stops at 0.18 m displacement, two wall seconds, or odometry older than
0.5 wall seconds, whichever happens first. Simulation dynamics can reduce or
slightly extend measured displacement during acceleration and settling.

## Actual integration path

`start_arena.launch` sets the planner selection. `TaskGenerator` creates a robot
manager; `RobotManager._launch_robot()` passes that selection to `robot.launch`.
It includes `costmap_nav.launch`, which dynamically includes
`mbf_<local_planner>.launch`. The new include loads the existing
`base_local_planner/TrajectoryPlannerROS` controller and starts the two small
Python nodes plus RTO's existing `mod_rto_scan` utility. The utility is needed
because the robot's current costmaps consume `modified_scan`.

The velocity route is:

```text
DummyPlanner.step()
  -> /rto/learned_cmd_vel (geometry_msgs/Twist)
  -> TrajectoryPlannerROS::cmdVelCB() caches the message
  -> TrajectoryPlannerROS::computeVelocityCommands() assigns cmd_vel_msg
  -> MBF publishes /rto/cmd_vel_internal (geometry_msgs/Twist)
  -> GuardedRelay.step()
  -> /rto/cmd_vel (geometry_msgs/Twist)
  -> Flatland HoloSecondOrder robot plugin
```

The adapter subscription in
`utils/navigation/planners/local/base_local_planner/src/trajectory_planner_ros.cpp`
is hardcoded to `/rto/learned_cmd_vel`. The dummy node rejects any namespace other
than `/rto/`. It subscribes only to robot odometry (`/rto/odom`,
`nav_msgs/Odometry`) and reset events; it does not process scans or global plans.
MBF still requires a valid pose and transformable global plan before returning
the cached command. Arena supplies goals through its existing robot manager.

## Stops and resets

The existing adapter retains its last velocity indefinitely. To handle loss of
the dummy Python process without changing that shared plugin, this planner's
launch replaces the usual `topic_tools` relay with `dummy_cmd_vel_relay.py`.
This separate process forwards MBF output only while both MBF and learned
commands are less than 0.35 wall seconds old and match the dummy's forward
command. Otherwise it publishes zero at 20 Hz. A learned zero also masks any
cached nonzero MBF output. The dummy planner itself never publishes `cmd_vel`.

Both nodes subscribe to the actual root-level reset events:

| Topic | Type | Behavior |
| --- | --- | --- |
| `/reset_start` | `std_msgs/Empty` | Clear state, publish zero, inhibit motion |
| `/reset_end` | `std_msgs/Empty` | Clear state, permit fresh observations |
| `/scenario_reset` | `std_msgs/Int16` | Clear state and publish zero |

After reset, fresh odometry and another explicit enable are required. Shutdown
publishes zero three times. A planner crash is handled by the separate relay's
timeout; the relay is required by its launch so an ordinary relay failure also
shuts down the robot navigation launch.

## Verification results

Code inspection verified the hardcoded adapter subscription, cached command
assignment, dynamic planner include, and reset publishers. Syntax checks passed
for the Python, launch XML, package XML, YAML, and JSON additions.

Both the package build and the full workspace build passed:

```bash
catkin build arena_bringup --no-deps
catkin build --no-status
```

The full build reported **143 of 143 packages succeeded**, no failed packages,
and no build warnings in its summary. Catkin also prints an existing advisory
about the package depending on the `navigation` metapackage. The first build
attempt exposed an ordering error in the new CMake entry; it was corrected by
placing `catkin_install_python()` after `catkin_package()`, which initializes
`CATKIN_PACKAGE_BIN_DESTINATION`. Both node executables now exist under
`devel/lib/arena_bringup`.

Five local regression checks passed:

```bash
python3 $(rospack find arena_bringup)/scripts/test_dummy_learning_planner.py
```

They exercise deliberate enablement, distance/time bounds, stale odometry, fresh
odometry plus explicit enable after reset, and relay masking of stale MBF output
when the Python planner disappears. These use mocked ROS registrations and are
not physical-motion tests.

Runtime inspection of the user's fully started **LfLH baseline** confirmed:

- `benchmark_resume=true` and `task_generator_setup_finished=true`.
- `/rto/hallucination` is the only learned-command publisher, with MBF subscribed.
- MBF is the only `cmd_vel_internal` publisher; the relay subscribes.
- The relay is the only final `cmd_vel` publisher; Flatland subscribes.
- The controller list contains `base_local_planner/TrajectoryPlannerROS`.
- Effective `/rto/move_base_flex/controller_frequency` is **10 Hz**.
- A sampled final command was linear.x=0.847569 and angular.z=0.578771.
- Reset topic names and types match the table above.

The dummy benchmark was then tested after its initial shutdown/relaunch cycle
and a further startup observation period. Arena, both Python nodes, MBF, the
scan utility, and Flatland started successfully. No hallucination or other
learned-planner node was present. Runtime publishers were:

| Topic | Sole publisher | Relevant subscribers |
| --- | --- | --- |
| `/rto/learned_cmd_vel` | `/rto/dummy_learning_planner` | MBF, guarded relay |
| `/rto/cmd_vel_internal` | `/rto/move_base_flex` | Guarded relay |
| `/rto/cmd_vel` | `/rto/mbf_cmd_vel_relay` | Flatland, data recorder |
| `/rto/odom` | `/flatland_server` | Dummy planner, MBF, Arena |

All three velocity topics use `geometry_msgs/Twist`. During the bounded motion
test they carried linear.x=0.1, linear.y=0, angular.z=0, followed by zeros.
The effective MBF parameter was 10 Hz; observed median wall-time rates were
9.98 Hz for learned commands, 10.02 Hz for MBF output, 19.94 Hz for the guarded
relay, and 50.00 Hz for odometry. The controller list contained the intended
`base_local_planner/TrajectoryPlannerROS`, and forwarding nonzero commands
confirmed that it was actually executing.

**Physical movement and stopping were verified from Flatland odometry:**

| Check | Initial (x, y), m | Final (x, y), m | Displacement |
| --- | --- | --- | --- |
| First bounded test | (5.000000, 5.000000) | (5.190485, 5.000000) | 0.190485 m |
| Repeat in user's running simulator | (5.044991, 5.000000) | (5.245480, 5.000000) | 0.200490 m |

The first test published 20 nonzero learned messages and 20 matching MBF output
messages. After settling, an additional two-second observation measured exactly
0.0 m displacement and only zero final commands. The repeated test also ended
with a zero final command. The physical displacement includes the unchanged
robot plugin's acceleration and settling, so it need not equal the node's
0.18 m cutoff exactly. RViz visual motion was not independently assessed.

A second enable was interrupted after 0.4 seconds by a real `/reset_task` call.
All three reset events were observed. The robot settled at (5.014946, 5.000000)
after its reset to (5, 5); this includes approximately 0.015 m of residual
settling in the existing dynamics. After settling, it moved 0.0 m over two
seconds, with no nonzero learned or final commands and no automatic resumption.

An abrupt-failure check enabled another short movement, then sent SIGKILL only
to the dummy planner. MBF continued publishing its cached 0.1 command, directly
confirming the adapter's stale-command limitation. The independent relay first
published zero **0.2924 seconds** after the kill. After settling, displacement
over a further two seconds was 0.0 m. The shared C++ adapter was not modified.

A normal-shutdown probe subsequently overlapped the user's simulator restart
and stopped the newly launched dummy node. That probe is excluded from the
validated run results. The planner alone was restored without restarting the
user's simulator, and the second physical-motion test above then passed in that
same simulator instance. Graceful shutdown's three zero publications are
implemented and inspected in `DummyPlanner.shutdown()`; the dedicated runtime
failure result above is the controlled SIGKILL test.

The full sampled test data are saved in `/tmp/arena_dummy_motion_results.json`;
the repeat in the user's simulator is saved in
`/tmp/arena_user_dummy_run_results.json`. Temporary probe scripts and logs also
remain under `/tmp`. The current dummy node remains running and disabled after
its completed test; call `enable` again to repeat the movement.

## Files added or changed

Paths below are relative to the indicated package:

| Package | File | Purpose |
| --- | --- | --- |
| `arena_bringup` | `scripts/dummy_learning_planner.py` | Standalone bounded Python planner and enable service |
| `arena_bringup` | `scripts/dummy_cmd_vel_relay.py` | Isolated relay with stale-command/reset stop |
| `arena_bringup` | `scripts/test_dummy_learning_planner.py` | Five local safety regression checks |
| `arena_bringup` | `CMakeLists.txt` | Install the two ROS node scripts |
| `arena_bringup` | `package.xml` | Declare ROS Python/message/service runtime dependencies |
| `arena_bringup` | `configs/benchmark/contests/dummy_learning_planner.yaml` | Separate benchmark contestant |
| `arena_bringup` | `configs/benchmark/suites/dummy_motion.yaml` | Single empty RTO motion-test stage |
| `arena_bringup` | `configs/benchmark/config.yaml` | Select the new dummy contestant and suite for the authorized test |
| `arena_bringup` | `configs/task_generator.yaml` | Updated by Arena at runtime with the dummy scenario and benchmark seed |
| `arena_bringup` | `DUMMY_LEARNING_PLANNER.md` | Integration, commands, and verification status |
| `arena_simulation_setup` | `launch/mbf/planners/local/mbf_dummy_learning_planner.launch` | Normal Arena planner-selection entry |
| `arena_simulation_setup` | `configs/mbf/local/dummy_learning_planner_params.yaml` | Separate MBF controller configuration |
| `arena_simulation_setup` | `worlds/map_empty/scenarios/dummy_motion.json` | Fixed start, distant goal, no obstacles |

Existing edits in `configs/benchmark/config.yaml` and `configs/task_generator.yaml`
were present before this work. Only the two benchmark selection values were
changed manually, preserving the remaining content and comments. Arena's
benchmark itself rewrites `configs/task_generator.yaml`, its backup, and
`benchmark/resume.lock` during its restart cycle; the currently running test has
selected `dummy_motion.json`. Copies of the pre-switch settings, including that
existing task-generator state, are saved in `/tmp/arena_dummy_motion_backup`.
The active dummy selection is being retained for the user's running simulator.
To return to the earlier baseline, select `comprehensive.yaml` and `lflh.yaml`.

The two node scripts are registered through `catkin_install_python`. No ML
packages or Python environment changes were needed.

## Replacing the calculation later

Future CFM-MPPI work can replace the constant Twist calculation in
`DummyPlanner.step()` with inference and add required observation subscribers and
model loading. Keep publishing to the learned-command interface so MBF remains
in the route. Its richer command range would also require adapting the isolated
relay's deliberately narrow 0.1 m/s check. Keep reset handling, command freshness,
shutdown zeros, and explicit control over when inference is enabled. Multi-robot
support would require addressing the existing adapter's hardcoded namespace.
No CFM-MPPI or ML functionality is implemented here.
