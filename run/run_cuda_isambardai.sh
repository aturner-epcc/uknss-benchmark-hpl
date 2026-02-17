#!/bin/bash
#SBATCH --job-name=BabelStream-cuda
#SBATCH --output=BabelStream-CUDA-%j.out
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --gpus-per-node=4

module load craype-network-ofi
module load PrgEnv-gnu
module load gcc-native/13.2
module load cray-mpich
module load cuda/12.6
module load craype-accel-nvidia90
module load craype-arm-grace

export OMP_NUM_THREADS=1

BABELSTREAM_DIR=/projects/u6cb/benchmarks/BabelStream/BabelStream/_build-cuda
BABELSTREAM_EXE=$BABELSTREAM_DIR/cuda-stream


devices="0 1 2 3"
for device in $devices
do
   echo
   echo "Running on device $device"
   echo "===================="
   echo
   $BABELSTREAM_EXE --device $device --arraysize 65536000000
done

