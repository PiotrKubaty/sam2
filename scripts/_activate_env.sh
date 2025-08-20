env_name=sam2

cur_dir=$(pwd)
ml ML-bundle/24.06a
cd $SCRATCH
source $env_name/bin/activate
cd $cur_dir