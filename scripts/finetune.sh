#!/bin/bash -l
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-gpu=72
#SBATCH --gres=gpu:2
#SBATCH --time=2-00:00:00
#SBATCH --account=plgittossl-gpu-gh200
#SBATCH --partition=plgrid-gpu-gh200
#SBATCH --output=logs/job-%j.out
#SBATCH --error=logs/job-%j.err
#SBATCH --mem=230G

source scripts/_activate_env.sh

python training/train.py \
    -c configs/sam2.1_training/sam2.1_hiera_b+_MOSE_finetune.yaml \
    --use-cluster 0 \
    --num-gpus 2
