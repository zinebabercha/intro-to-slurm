#!/bin/bash
#SBATCH --job-name=my_job                 
#SBATCH --partition=compute           
#SBATCH --nodelist=node13                  
#SBATCH --exclude=node02,node03,node15       
#SBATCH --output=output.txt             
#SBATCH --error=error.log        
#SBATCH --ntasks=1                           

python functions.py output.txt output.txt


