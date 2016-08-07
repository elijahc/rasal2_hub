#!/usr/bin/env bash

#BSUB -J master
#BSUB -e snakemaster.%J.err
#BSUB -o snakemaster.%J.out
#BSUB -q normal

snakemake --cluster-config "/vol3/home/elijah/dev/rotations/frameshifting/pipeline/cluster_config.json" --drmaa " {cluster.requirements} -n {threads} -o {log}.out -e {log}.err -J {cluster.job_name}" -j 10
