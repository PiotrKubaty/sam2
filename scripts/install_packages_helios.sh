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

source scripts/_activate_env.sh

pip uninstall -y torch torchvision torchaudio
pip install -e ".[dev]"
pip install --index-url https://download.pytorch.org/whl/cu121 \
    torch torchvision torchaudio
