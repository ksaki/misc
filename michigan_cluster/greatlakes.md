# Cheat sheet for Great Lakes (New cluster computer at Michigan)

## Login

From UMich network,
```
ssh uniqname@greatlakes.arc-ts.umich.edu
```
From outside UMich network, use VPN or ssh uniqname@scs.itd.umich.edu

## Slurm

Here is an example slurm job script. It should be named as "XXX.sh"

```
#!/bin/bash
# The interpreter used to execute the script

#“#SBATCH” directives that convey submission options:

#SBATCH --job-name=example_job
#SBATCH --mail-user=uniqname@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=10:00
#SBATCH --account=test
#SBATCH --partition=standard
#SBATCH --output=/home/%u/%x-%j.log

# The application(s) to execute along with its input arguments and options:

/bin/hostname
sleep 60

```

The important variables are the following
- --job-name: Name your job so you can understand which task you are doing
- --cps-per-task: the number of cores (max 1000 per root account)
- --mem: Memory limit (max 7000 GB per root account)
- --time: time limit (max 2 weeks per root account)
- --partition: 'standard' is the basic choice. You can request 'gpu' or 'largemem', but different limitations and charges apply.
- --array: job array (e.g. --array=0-15)
- --output: the path of the output file. The path in the example will save log files in the home directory.


## Submit jobs and check the process

```
# submit job
sbatch job.sh

# check job
squeue -u user 
squeue -j jobid 
```

If "ST" seciton is R, it is running. For other signs, see [Slurm website, JOB STATE CODES section 
(better Ctrl + F because it is at the bottom)](https://slurm.schedmd.com/squeue.html).



