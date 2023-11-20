#!/bin/bash
#SBATCH -J sum_of_squares_comparison  # Job name
#SBATCH -o sum_of_squares_comparison_%j.out  # Output file name (%j expands to jobID)
#SBATCH -e sum_of_squares_comparison_%j.err  # Error file name (%j expands to jobID)
#SBATCH --nodes=1  # Total number of nodes requested
#SBATCH --ntasks-per-node=1  # Number of tasks per node
#SBATCH --cpus-per-task=1  # Number of CPU cores per task
#SBATCH --gres=gpu:1  # Number of GPUs per node
#SBATCH --time=00:10:00  # Estimated time for the job to complete (format: HH:MM:SS)

# Load required modules
module load Python/3.8.2-GCCcore-9.3.0
module load CUDA/11.1.1

# Number of total points to generate (change this value for different runs)
Ns="1000 10000 100000 1000000"

# Execute the CPU version
for N in $Ns
do
    echo "Running CPU version with N = $N"
    srun python3 numba.py $N
done

# Execute the GPU version
for N in $Ns
do
    echo "Running GPU version with N = $N"
    srun python3 cuda.py $N
done

