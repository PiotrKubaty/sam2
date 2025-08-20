cache_dir=pip-build
env_name=sam2

conda create -n $env_name python=3.11 -y
conda activate $env_name

conda install nvidia/label/cuda-12.8.1::cuda -y

pip install torch torchvision torchaudio -f https://download.pytorch.org/whl/128.html


rm -r $cache_dir
