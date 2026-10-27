# Live-observation CFM-MPPI experiments

The separate `cfm_mppi_obstacles` option adds scan and pedestrian observations
to the existing bridge. Dummy, bounded CFM, and empty-scene continuous options
remain available. This report distinguishes verified results from ongoing work.

## Run

In `configs/benchmark/config.yaml`, select contestant
`cfm_mppi_obstacles.yaml` and suite `cfm_static.yaml` or `cfm_pedestrian.yaml`.
Keep simulator `flatland`.

```bash
cd /home/azaro/arena_ws
source devel/setup.bash
catkin build
source devel/setup.bash
roslaunch arena_bringup start_arena.launch tm_modules:=benchmark
```

Finish the build successfully before launching or restarting after code changes;
do not run build and simulator in parallel. Allow the initial close/relaunch and
full startup. In another sourced terminal:

```bash
rosservice call /rto/cfm_mppi_obstacles/enable '{}'
rosservice call /rto/cfm_mppi_obstacles/stop '{}'
```

Use `/reset_task` to reset; a new enable is required afterward. Use
`rosnode kill -a` to stop the simulator. The suites permit ten episodes of 600
seconds. Each enable is limited to 300 wall seconds or 4 m displacement. Only
the supplied static/pedestrian/speed scenarios can enable this option.

## Inputs and execution

All observations are transformed into map coordinates. `/rto/scan` supplies up
to 32 nearby static surface points, deduplicated on a 0.15 m grid within 2.5 m.
`/pedsim_simulator/simulated_agents` supplies up to 16 nearby pedestrian
positions and velocities. The person model's 0.7 m visual/sensor halo is removed
from the static scan representation within 0.75 m of a tracked person, avoiding
double-counting moving returns as stationary obstacles. Invalid scans and stale
or missing required observations stop execution.

The worker accepts optional map-frame `[x,y,vx,vy]` tracks and predicts their
motion through the repository's constant-velocity interface. The Transformer,
guidance functions, and original MPPI algorithm are unchanged. The static
planning radius is 0.4 m; the pedestrian buffer is `0.8 + 0.3 * max_linear` m
(1.025 m at the normal velocity limit).

The pedestrian mode uses a 2.0 m lookahead target on Arena's existing
`move_base_flex/NavfnROS/plan`, while final goal stopping uses the episode goal.
It also permits CFM-generated reverse speed down to -0.25 m/s. Earlier options
retain their test defaults. This option now exposes `max_linear=0.75`,
`max_angular=1.0`, and `max_reverse=0.25` in its launch configuration. Matching
limits are passed to MPPI and the relay. The former 0.1 m/s cap was an
experimental restriction, not a physical robot limit. Selected speeds may be
lower than the maximum depending on the plan.

Prediction now includes RTO's existing Kp=5, acceleration limits=5 velocity
response, initialized from measured planar and angular velocity. This models
actuator lag and turning without changing the robot or pretrained network.
Goal stopping uses predicted settled position rather than an instantaneous stop.

Returned trajectories are checked against the latest observations over four
seconds. Static-point clearance is 0.35 m. If a person already entered the
planning buffer, a model-generated escape may use that buffer while retaining
a 0.55 m predicted center-distance floor. RTO and pedestrian body radii are
0.225 m and 0.3 m, respectively. Unsafe plans are dropped. Tracking mismatches
stop playback and trigger fresh planning after settling in this option. Reset,
explicit stop, worker failure, observation loss, and test limits disable motion.

Command routing remains Python -> learned_cmd_vel -> MBF -> cmd_vel_internal
-> guarded relay -> cmd_vel -> Flatland. The obstacle option forwards fresh,
bounded MBF commands during asynchronous learned-command updates. A learned
zero still immediately masks cached nonzero output. Earlier options retain the
strict matching default. No direct Python publisher bypasses MBF.

## Verified static result

This result used the earlier 0.1 m/s experimental cap.
The isolated test post is a collision-enabled circle of radius 0.2 m at
(5.65,5.3). The straight route intersects the combined 0.425 m footprint radius.
Robot dynamics and the existing models were not changed.

| Start | Goal | Final position | Goal distance | Minimum physical clearance |
| --- | --- | --- | --- | --- |
| (5.000000,5.000000) | (7.000000,5.000000) | (6.978170,4.915229) | 0.087537 m | 0.224942 m |

The robot passed below the post (minimum y=4.044736), accepted 76 obstacle-aware
plans, and stopped. The measured run including settling checks took 55.4 s.
Further stationary displacement was 0.0 m. A real reset during inference
discarded the old result and left the robot stationary at (5,5). The earlier samples
and reset results are in `/tmp/arena_cfm_static_low_speed_results.json`.

An earlier goal at (6.2,5) was too close to the post for the strong soft
collision cost: clearance was maintained but goal convergence failed. That run
is preserved in `/tmp/arena_cfm_static_near_goal_results.json`. The successful
test moved the goal beyond the same blocking post without altering the original
planning algorithm.

Float32 limit rounding was also fixed: MPPI's `0.3` can arrive as
`0.3000000119`. Validation accepts rounding error and normalizes output to exact
limits. A regression test covers this case.

## Verified normal-speed result

The `cfm_speed.yaml` suite provides an empty 3 m run. It sets Arena's
`goal_radius=0` to prevent episode teleportation from hiding physical settling;
the bridge still applies its own stopping criterion.

After a successful full build (143/143 packages) and 31 local safety checks,
the normal-speed run commanded a peak of 0.75 m/s and measured 0.645430 m/s in
odometry. It went from (5,5) toward (8,5), settling at
(7.963615,5.064721), 0.074247 m from the goal. A further stationary observation
measured 0.0 m displacement. Three tracking stop/replan events occurred; the run
including settling checks took 24.0 seconds. Data are in
`/tmp/arena_cfm_normal_speed_results.json`, and the successful pre-launch build
is saved in `/tmp/arena_cfm_normal_speed_build.log`.

The static-post test also passed at the normal 0.75 m/s limit after a fresh
143-package build and 31 passing local checks. It reached (6.983776,4.942437),
0.059805 m from (7,5), with 0.253158 m minimum physical footprint clearance.
Peak commanded speed was 0.75 m/s; measured forward speed peaked at 0.431262 m/s.
It accepted 19 obstacle-aware plans and completed settling checks in 27.6 s.
Further stationary displacement was 0.0 m. Samples are saved in
`/tmp/arena_cfm_static_results.json`; the pre-launch build is
`/tmp/arena_cfm_build_before_run.log`.

## Verified controlled pedestrian result

After a successful full build (143/143 packages), the normal-speed controlled
crossing test reached (7.528855,4.935430), 0.070724 m from its goal (7.5,5).
The robot accepted 29 plans using measured nonzero pedestrian velocities.
Minimum center distance was 0.650000 m, giving 0.125000 m geometric body
clearance for the combined 0.525 m radii. The pedestrian's observed y range was
4.144665 to 6.240039 m. Peak commanded speed was 0.75 m/s and peak measured
forward speed was 0.730550 m/s. Six tracking stop/replan events occurred.
The run including settling checks took 38.7 s; further stationary displacement
was 0.0 m. Data are in `/tmp/arena_cfm_pedestrian_results.json`; its pre-launch
build is `/tmp/arena_cfm_pedestrian_build.log`.

The person model has no physical collision response, so the clearance above is
computed from timestamp-aligned robot and agent poses. It establishes this
controlled run, not general crowd-navigation performance.

Earlier low-speed attempts failed to reach the goal.
The first variable-behavior run triggered a clearance stop before reaching the
goal. A reverse-capable run retained 0.828 m minimum center distance but did not
converge and stopped on a tracking mismatch. These runs are preserved in
`/tmp/arena_cfm_pedestrian_variable_behavior_results.json` and
`/tmp/arena_cfm_pedestrian_reverse_buffer_results.json`.

The current controlled crossing uses looped waypoints, reduced requested speed,
and explicit force/probability settings in its own scenario. Pedsim can vary
speed internally; validation uses actual measured motion. The successful iteration
uses global-path lookahead, actuator-response prediction, and tracking recovery. Its samples/results are
written to `/tmp/arena_cfm_pedestrian_results.json`.

## Reset and stalled-inference verification

The normal-speed obstacle bridge was tested in the same pedestrian simulator
instance after navigation. A real `/reset_task` during active replanning
invalidated the in-flight result. The robot settled at (5,5), moved 0.0 m over
the additional observation period, and required explicit enable afterward.

The inference child process was then paused with SIGSTOP during execution.
The plan lease expired and final commands became zero. After the settling wait,
additional measured displacement was 0.000749 m, below the 0.002 m check.
The bridge was explicitly stopped before the worker was resumed with SIGCONT;
no automatic motion resumed. Full samples and results are in
`/tmp/arena_cfm_obstacle_failure_results.json`. This checks stalled inference;
the earlier dummy documentation separately records the abrupt planner-failure
relay test.

Work stopped after these checks at the user's request. The active benchmark
selection is `cfm_pedestrian.yaml` with `cfm_mppi_obstacles.yaml`; the simulator
is left running with the planner explicitly disabled. Use the enable service
above for another run after checking current observations.

## Files and checks

New files include `scripts/cfm_mppi_obstacles.py`, its test script, contestant
and suite YAMLs, `mbf_cfm_mppi_obstacles.launch`, both scenario JSON files, and
the isolated `cfm_test_post` model. CMake registers the node and the manifest
declares scan/Pedsim message dependencies. Optional worker fields preserve the
earlier empty-scene defaults. Existing C++ planners and Python environments
were not changed.

```bash
python3 $(rospack find arena_bringup)/scripts/test_cfm_mppi_obstacles.py
python3 $(rospack find arena_bringup)/scripts/test_cfm_mppi_continuous.py
python3 $(rospack find arena_bringup)/scripts/test_cfm_mppi_bridge.py
python3 $(rospack find arena_bringup)/scripts/test_dummy_learning_planner.py
```

Full workspace builds have passed 143/143 packages. Latest pre-launch output is saved in
`/tmp/arena_cfm_pedestrian_build.log`. These controlled tests do not establish
general crowd-navigation performance or collision guarantees under arbitrary
pedestrian acceleration.
