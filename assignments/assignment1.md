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

Create a job array to run the same job with different input parameters. Each task should print a unique message.

Use the **%A** and **%a** placeholders within the script to access the array job ID and task ID.

Submit the job array and observe how SLURM manages the individual tasks.

## Exercise 4: Job Dependencies

Create two batch jobs: Job A and Job B. Job B should depend on Job A's completion.

Use the **--dependency** flag to specify the dependency relationship between the jobs.

Submit both jobs and ensure Job B only starts after Job A completes.

## Exercise 5: Priority and Fair Share

Submit three jobs with different priority levels (low, medium, high).

Observe how job priority affects job scheduling.

If your SLURM cluster uses fair share scheduling, experiment with priority adjustments based on user or group fair share usage.

## Exercise 6: Time Limits

Create a batch job that runs a long-running task (e.g., a sleep command) with a specific time limit.

Observe how SLURM enforces job time limits and handles job termination.

## Exercise 7: Job Output and Error Handling

Redirect job output and error messages to specific files using the **--output** and **--error** flags.

Experiment with different ways of handling job failures and debugging.

## Exercise 8: Job Accounting

Use the **sacct** command to review job accounting information for a previously submitted job.

Explore the job's start and end times, resource usage, and job exit code.

## Exercise 9: Node and Partition Selection

Submit a job to a specific partition (if available) using the --partition flag.

Submit a job to run on a specific node using the **--nodelist** flag.

Understand how SLURM manages job placement on different nodes and partitions.

## Exercise 10: Advanced Job Scripting

Create a more complex job script that includes conditional logic, loops, or custom environment setups.

Practice using SLURM environment variables within your job scripts.

## Exercise 11: Interactive Jobs

Submit an interactive job using **salloc** to gain shell access to a compute node.

Run commands and test software interactively within the compute node.

## Exercise 12: Sinfo
Use **sinfo** to print only the available resources

