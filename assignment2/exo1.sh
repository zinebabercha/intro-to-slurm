#!/bin/bash

# run_mpi.sh

# Define the number of cores
for cores in {1..128}; do
    echo "Running with $cores cores"
    mpirun -n $cores python mpi.py
done

