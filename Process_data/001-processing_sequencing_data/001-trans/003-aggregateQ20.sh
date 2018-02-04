#!/bin/bash
#$ -V
#$ -N aggregate_trans
#$ -cwd
#$ -q short-sl7
#$ -l virtual_free=20G,h_rt=1:00:00
#$ -o ./qsub_out/003-aggregate_Q20.out.txt
#$ -e ./qsub_out/003-aggregate_Q20.err.txt

mkdir -p "../../000-data/001-raw_data"

echo "start"
perl 003-aggregate_all.pl 20
perl 003-aggregate_filt.pl 20

