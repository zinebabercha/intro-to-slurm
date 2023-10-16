#!/bin/bash
#SBATCH --job-name=long_running_job     
#SBATCH --output=output.txt            
#SBATCH --error=error.log         
#SBATCH --time=0-00:05:00            
#SBATCH --ntasks=1                       
sleep 600
