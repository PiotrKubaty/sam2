#!/bin/bash -l
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --gres=gpu:1
#SBATCH --time=01:00:00
#SBATCH --account=plgittossl-gpu-gh200
#SBATCH --partition=plgrid-gpu-gh200
#SBATCH --output=logs/job-%j.out
#SBATCH --error=logs/job-%j.err
 
# IMPORTANT: load the modules for machine learning tasks and libraries
ml ML-bundle/24.06a
 
cd $SCRATCH
 
# create and activate the virtual environment
env_name=sam2

python -m venv $env_name/
