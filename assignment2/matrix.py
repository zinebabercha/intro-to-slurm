from numba import cuda, njit
import numpy
import math
import timeit
import cupy


@njit
def mxm_dense_numba(A, B, C):
    """Perform matrix multiplication C = A * B"""
    rows, cols = A.shape[0], B.shape[1]

    for i in range(rows):
        for j in range(cols):
            tmp = 0.0
            for k in range(A.shape[1]):
                tmp += A[i, k] * B[k, j]
            C[i, j] = tmp

# CUDA kernel
@cuda.jit
def mxm_dense_cuda(A, B, C):
    """Perform matrix multiplication of C = A * B
    """
    row, col = cuda.grid(2)
    if row < C.shape[0] and col < C.shape[1]:
        tmp = 0.
        for k in range(A.shape[1]):
            tmp += A[row, k] * B[k, col]
        C[row, col] = tmp

n = 2000
A = cupy.full((n, n), 3, cupy.float64) # matrix containing all 3's                                                                                                                                  
B = cupy.full((n, n), 4, cupy.float64) # matrix containing all 4's                                                                                                                                   
C = cupy.zeros((n, n), dtype=cupy.float32)

# Configure the blocks
# Set up the CUDA grid dimensions

nb = 32
threadsperblock = (nb, nb)
blockspergrid_x = (A.shape[0] + threadsperblock[0] - 1) // threadsperblock[0]
blockspergrid_y = (B.shape[1] + threadsperblock[1] - 1) // threadsperblock[1]
blockspergrid = (blockspergrid_x, blockspergrid_y)

mxm_dense_cuda[blockspergrid, threadsperblock](A, B, C)
ts = timeit.default_timer()
# Start the kernel 
mxm_dense_cuda[blockspergrid, threadsperblock](A, B, C)
te = timeit.default_timer()
print("With dense GPU", te - ts)


A = numpy.full((n, n), 3, numpy.float64) # matrix containing all 3's                                                                                                                                  
B = numpy.full((n, n), 4, numpy.float64) # matrix containing all 4's                                                                                                                                   
C = numpy.zeros((n, n), dtype=numpy.float32)


mxm_dense_numba(A, B, C)
ts = timeit.default_timer()
# Start the kernel                                                                                                                                                                                         
mxm_dense_numba(A, B, C)
te = timeit.default_timer()
print("With dense CPU", te - ts)
