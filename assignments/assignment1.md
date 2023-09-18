<h1 align="center">Exercises</h1>

## Exercise 1: Basic Job Submission

Write a simple SLURM batch script (my_job.sh) that prints **"Hello, SLURM!"** to a file.

Submit the job using sbatch.

Use **squeue** to check the status of your job.

## Exercise 2: Resource Allocation

Create a batch job that requests specific resources, such as 4 CPU cores and 4GB of memory.

Submit the job with resource requests using the **--cpus-per-task** and **--mem** flags.

Observe how SLURM allocates the requested resources.

## Exercise 3: Job Arrays

Create config.txt that contains the table below:
```bash
cat config.txt

ArrayTaskID   SampleName        Sex
1             Ahmed             M
2             Amine             M
3             Amal              F
4             Samir             M
5             Ali               M
6             Camelia           F
7             Myriam            F
8             Radouan           M
9             Ikram             F
10            Sara              F
```

Write batch file using ```--array``` command that reads this config file and stores the output below to ```output.txt```.

```bash
$ cat output.txt 
This is array task 2, the sample name is Amine and the sex is M.
This is array task 1, the sample name is Ahmed and the sex is M.
This is array task 3, the sample name is Amal and the sex is F.
This is array task 4, the sample name is Samir and the sex is M.
This is array task 5, the sample name is Ali and the sex is M.
This is array task 7, the sample name is Myriam and the sex is F.
This is array task 6, the sample name is Camelia and the sex is F.
This is array task 9, the sample name is Ikram and the sex is F.
This is array task 8, the sample name is Radouan and the sex is M.
This is array task 10, the sample name is Sara and the sex is F.

```

N.B: Limit the number of tasks run at once to 2.

Write batch file using ```--array``` command that reads this config file and stores the output below to ```output.txt```.

```bash
$ cat output.txt 
This is array task 3, the sample name is Amal and the sex is F.
This is array task 5, the sample name is Ali and the sex is M.
This is array task 7, the sample name is Myriam and the sex is F.**
```

## Exercise 4: Job Dependencies

Create two Python functions:
- First one: Calculates the discriminant of a second-degree equation.
- Second one: Prints the roots depending on the discriminant calculated by the first function
  
Create two batch jobs: Job A and Job B. Job B should depend on Job A's completion.

Use the **--dependency** flag to specify the dependency relationship between the jobs.

Submit both jobs and ensure Job B only starts after Job A completes.


## Exercise 5: Time Limits

Create a batch job that runs a long-running task (e.g., a sleep command ```sleep 600```) with a specific time limit (eg. 5 minutes).

Observe how SLURM enforces job time limits and handles job termination.

## Exercise 6: Job Output and Error Handling

Redirect job output and error messages to specific files using the **--output** and **--error** flags.

Experiment with different ways of handling job failures and debugging.

## Exercise 7: Job Accounting

Use the **sacct** command to review job accounting information for a previously submitted job.

Explore the job's start and end times, resource usage, and job exit code.

Example of output:
```
JobID    JobName  Partition    Account  AllocCPUS               Start                 End    Elapsed     MaxRSS  MaxVMSize ExitCode 
------------ ---------- ---------- ---------- ---------- ------------------- ------------------- ---------- ---------- ---------- -------- 
5836127_1    montecarl+       defq msda-acc+           1 2023-09-18T07:07:02 2023-09-18T07:19:52   00:12:50                            0:0 
5836127_1.b+      batch            msda-acc+           1 2023-09-18T07:07:02 2023-09-18T07:19:52   00:12:50      3772K    340944K     0:15 
```

## Exercise 8: Node and Partition Selection

Submit a job to a specific partition (if available) using the --partition flag.

Submit a job on node13.

Submit a job with excluding nodes node02,node03,node15.

Understand how SLURM manages job placement on different nodes and partitions.


## Exercise 9: Interactive Jobs

Submit an interactive job using **salloc** to gain shell access to a compute node.

Run commands and test software interactively within the compute node.

## Exercise 10: Sinfo
Use **sinfo** to print only the available resources

Example of output:
```bash
node[01,03-04,09-10,14,16] mix 169/135/0/304
node13,visu01 idle 0/88/0/88
```
