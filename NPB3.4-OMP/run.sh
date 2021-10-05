#!/bin/bash


run_bench() {
  bench=$1
  echo 0 > /proc/sys/kernel/numa_balancing
  ./bin/${bench}.x
  sleep 10

  echo 0 > /proc/sys/kernel/numa_balancing
  ./bin/${bench}.y
  sleep 10
  echo 1 > /proc/sys/kernel/numa_balancing
  ./bin/${bench}.y

  sleep 10
  
}


run_bench is.C
run_bench bt.D
run_bench cg.D
run_bench ep.D
run_bench ft.C
run_bench lu.D
run_bench mg.D
run_bench sp.D


