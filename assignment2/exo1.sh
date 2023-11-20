#!/bin/bash

<<<<<<< HEAD
#exo1.sh
=======
# exo1.sh
>>>>>>> ff07f1dfecd2fc66299a3340c6f62b564082487c

# Define the number of cores
for cores in {1..128}; do
    echo "Running with $cores cores"
    mpirun -n $cores python mpi.py
done

