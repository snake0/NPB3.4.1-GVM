#!/bin/bash

run_bench() {
	bench=$1
	interf=$2
	
	start=$(date +%s)
	startrx=$(cat /sys/class/net/$interf/statistics/rx_bytes)
	starttx=$(cat /sys/class/net/$interf/statistics/tx_bytes)
	
#	mpirun -hostfile host.txt -np 16 --mca btl openib,self,vader /home/sin/NPB3.4.1-GVM/NPB3.4-MPI/bin/${bench}.xy
	sleep 2
	stop=$(date +%s)
	stoprx=$(cat /sys/class/net/$interf/statistics/rx_bytes)
        stoptx=$(cat /sys/class/net/$interf/statistics/tx_bytes)
	
	echo t $((stop-start))
	echo r $((stoprx-startrx))
	echo t $((stoptx-starttx))
	echo 	
}

run_bench is.C $1
run_bench bt.D $1
run_bench cg.D $1
run_bench ep.D $1
run_bench ft.C $1
run_bench lu.D $1
run_bench mg.D $1
run_bench sp.D $1

run_bench is.C $1
run_bench bt.D $1
run_bench cg.D $1
run_bench ep.D $1
run_bench ft.C $1
run_bench lu.D $1
run_bench mg.D $1
run_bench sp.D $1

run_bench is.C $1
run_bench bt.D $1
run_bench cg.D $1
run_bench ep.D $1
run_bench ft.C $1
run_bench lu.D $1
run_bench mg.D $1
run_bench sp.D $1

run_bench is.C $1
run_bench bt.D $1
run_bench cg.D $1
run_bench ep.D $1
run_bench ft.C $1
run_bench lu.D $1
run_bench mg.D $1
run_bench sp.D $1

run_bench is.C $1
run_bench bt.D $1
run_bench cg.D $1
run_bench ep.D $1
run_bench ft.C $1
run_bench lu.D $1
run_bench mg.D $1
run_bench sp.D $1


