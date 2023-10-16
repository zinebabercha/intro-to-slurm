#!/bin/bash
#SBATCH --job-name=job_a          
#SBATCH --output=job_a_output.txt  
#SBATCH --error=job_a_error.log    
#SBATCH --ntasks=1                  
python functions.py 2 5 2
