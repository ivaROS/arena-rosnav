#!/usr/bin/env python3
import subprocess
import os
import sys
from threading import Thread
import argparse
import signal
import atexit
import time


def run(name, num, rec_dir, ff, sets, port):
  runs = 0
  attempts_in_a_row = 0
  rencarnate_safety = 0

  i = 0
  while (i < sets):
    print(f"[Port {port}] Starting run {runs}/{sets}. {num} episodes per. Force factor {ff}")
    p = subprocess.Popen([
      "roslaunch", "arena_bringup", "start_trials.launch",
      "tm_modules:=benchmark",
      f"benchmark_suite:={name}.yaml",
      f"benchmark_episodes:={num}",
      f"rec_dir:={rec_dir}",
      f"force_factor:={ff}",
    ], env={**os.environ, "ROS_MASTER_URI": f"http://localhost:{port}"})
    
    try:
      p.wait(timeout=420) #7 mins
      print(f"[Port {port}] p.wait() returned with code {p.returncode}")
    except:
      print(f"[Port {port}] Ran out of time. killing attempt")
      p.terminate()
      p.wait()
      continue

    print("starting grace period.")
    time.sleep(15)
    print("grace period finished.")
    
    print(f"[Port {port}] Finished run {i + 1}/{sets}.\n")

    if p.returncode == -15:
      print(f"[Port {port}] Reincarnating, waiting briefly then relaunching...")
      time.sleep(10)
      rencarnate_safety += 1
      if (rencarnate_safety > 3):
        print(f"[Port {port}] Rencarnate triggered for a fourth time. Set {i} is skipped")
        i += 1
      continue
    elif (p.returncode in [0, -14]):
      attempts_in_a_row = 0
    else:
      attempts_in_a_row += 1
      print(f"[Port {port}] Run {i + 1}/{sets} crashed with code {p.returncode}")
      if (attempts_in_a_row <= 2):
        i -= 1
      else:
        attempts_in_a_row = 0

    runs += 1
    i += 1
    

def parse_args(args):
    result = {}
    for arg in args:
        key, value = arg.split('=')
        result[key] = value
    return result


if __name__ == "__main__":

  # python3 /home/abdel/arena_ws/src/arena/arena-rosnav/arena_bringup/launch/start_2ros_2rviz.py --trials suite=CS1_reopening episodes=1 sets=1 rec_dir=/home/abdel/arena_ws/src/arena/evaluation/arena_evaluation/data/attempt1 ff=0.0 --trials suite=CS2_overtaking episodes=1 sets=1 rec_dir=/home/abdel/arena_ws/src/arena/evaluation/arena_evaluation/data/attempt2 ff=0.0
  parser = argparse.ArgumentParser()
  parser.add_argument('--trials', nargs='*', action='append')
  args = parser.parse_args()

  threads = []
  port = 11311

  if (args.trials):
    for i, trial in enumerate(args.trials):
      sub_args = parse_args(trial)
      t = Thread(target=run, args=(
        sub_args['suite'],
        int(sub_args['episodes']),
        sub_args['rec_dir'],
        float(sub_args['ff']),
        int(sub_args['sets']),
        port + i
      ))
      threads.append(t)

  for t in threads:
    t.start()

  for t in threads:
    t.join()

  print("All trials completed")


