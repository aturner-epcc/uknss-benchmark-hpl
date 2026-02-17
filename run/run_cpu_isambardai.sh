#!/bin/bash
#SBATCH --job-name=BabelStream-cpu
#SBATCH --output=BabelStream-CPU-%j.out
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --time=00:30:00
#SBATCH --gpus-per-node=4

module load craype-network-ofi
module load PrgEnv-gnu
module load gcc-native/13.2
module load cray-mpich
module load craype-arm-grace

export OMP_NUM_THREADS=288
export OMP_PLACES=cores

BABELSTREAM_DIR=/projects/u6cb/benchmarks/BabelStream/BabelStream/_build-cpu
BABELSTREAM_EXE=$BABELSTREAM_DIR/omp-stream

srun --hint=nomultithread --distribution=block:block \
     --ntasks=1 --cpus-per-task=288 \
     $BABELSTREAM_EXE --arraysize 65536000000

