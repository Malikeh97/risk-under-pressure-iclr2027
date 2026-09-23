#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --gpus-per-task=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=128GB
#SBATCH --partition=compute
#SBATCH --account=YOUR_SLURM_ACCOUNT

hostname

# CLUSTER_C compute nodes have no internet access — use cached models
export OFFLINE_MODE=1

source setup/start_env.sh

eval "$@"
