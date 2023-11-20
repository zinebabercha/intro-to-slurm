#!/bin/bash
#SBATCH --job-name=mpi_job
#SBATCH --output=output_14.txt
#SBATCH --partition=your_partition
#SBATCH --nodes=1
#SBATCH --ntasks=14
#SBATCH --time=00:10:00
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0
mpirun -np 14 python your_script.py
