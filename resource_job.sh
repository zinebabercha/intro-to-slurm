#!/bin/bash
#SBATCH --job-name=resource_job 
#SBATCH --output=output.txt
#SBATCH --error=error.log
#SBATCH --ntasks=1  
#SBATCH --cpus-per-task=4 
#SBATCH --mem=4G
echo "Hello, SLURM1!"
