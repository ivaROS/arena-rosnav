## Installation

The easiest way to install Arena-Rosnav is to use the [automatic installation](https://docs.arena-rosnav.org/en/latest/user_guides/installation/).

## Benchmarking and plotting 
The Arena Rosnav authors are still in the process of rewriting and releasing an updated version of arena-evaluation. Here's how to benchmark followed by plotting the data: 
replace arena_evaluation from arena_ws/src/arena/evaluation with this: 

https://github.com/voshch/arena-evaluation/tree/restructure

make sure you use the restructure branch. 

 quick overview of the current internal benchmarking process:

go to arena_ws/arena_bringup/arena_bringup/configs/benchmark,
create or choose a 'contest' (specification of competing planners) and select it in config.yaml,
create or choose a 'suite' (specification of competition scenarios) and select it in config.yaml. Note if you'd like to use basic.yaml there's a typo on line 10. Replace "arena_hospital_small_4.json" with just "4.json" 

start the benchmarking process using `roslaunch arena_bringup start_arena.launch tm_modules:=benchmark`,
due to ros1 limitations, the program may restart itself multiple times,
wait for the benchmark to finish. You can track the progress in arena_bringup/configs/benchmark/logs/*.log.
After finishing benchmarking, plots can be generated by

navigating to arena_evaluation/data,
running `rosrun arena_evaluation process_data <path_to_data> --output <output_directory>` 
for example `rosrun arena_evaluation process_data /home/az/arena_ws/src/arena/evaluation/arena-evaluation/arena_evaluation/data/testing --output /home/az/arena_ws/src/arena/evaluation/arena-evaluation/arena_evaluation/plots`
This will compute all the metrics and output many possible plots in the plots directory.
