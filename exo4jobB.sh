#!/bin/bash
#SBATCH --job-name=job_b           
#SBATCH --output=job_b_output.txt  
#SBATCH --error=job_b_error.log    
#SBATCH --ntasks=1                  
#SBATCH --dependency=afterok:job_a 
python functions.py 2 5 2
