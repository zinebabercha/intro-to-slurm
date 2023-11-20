#!/bin/bash
#SBATCH --job-name=matrix_multiplication
#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=00:10:00
#SBATCH --output=matrix_multiplication_%j.out

module load Python/3.8.2-GCCcore-9.3.0 CUDA/11.1.1


python matrix.py matrix_size

