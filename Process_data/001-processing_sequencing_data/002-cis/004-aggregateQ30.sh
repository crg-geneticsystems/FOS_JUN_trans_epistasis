#!/bin/bash
#$ -V
#$ -N aggregate_cis
#$ -cwd 
#$ -q short-sl7
#$ -l virtual_free=80G,h_rt=2:00:00
#$ -o ./qsub_out/004-aggregate_Q30.out.txt
#$ -e ./qsub_out/004-aggregate_Q30.err.txt

mkdir -p "../../000-data/001-raw_data"

echo "start"
perl 004-aggregate_all.pl 30
perl 004-aggregate_filt.pl 30
