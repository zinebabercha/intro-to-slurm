#!/bin/bash
#SBATCH --job-name=my_job
#SBATCH --output=output.txt
#SBATCH --error=error.log
#SBATCH --ntasks=1
#SBATCH --time=00:01:00 
#SBATCH --partition=defq 
echo "Hello, SLURM!"


