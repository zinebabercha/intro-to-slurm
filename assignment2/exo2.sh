#!/bin/bash
#SBATCH -J monte_carlo_pi       # Job name
#SBATCH -o monte_carlo_pi_%j.out  # Output file name (%j expands to jobID)
#SBATCH -e monte_carlo_pi_%j.err  # Error file name (%j expands to jobID)
#SBATCH --nodes=1                # Total number of nodes requested
#SBATCH --ntasks-per-node=8      # Number of tasks per node
#SBATCH --cpus-per-task=1        # Number of cores per task
#SBATCH --time=00:10:00          # Estimated time for the job to complete (format: HH:MM:SS)

# Load required modules
module load OpenMPI/4.0.3-GCC-9.3.0
module load Python/3.8.2-GCCcore-9.3.0

# Number of total points to generate 
total_points=1000

# Number of cores to use 
cores=8

# Execute the Python script
mpiexec -n $cores python3 piMC.py $total_points

