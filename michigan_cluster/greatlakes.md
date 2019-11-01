# Cheat sheet for Great Lakes (New cluster computer at Michigan)

## Login

From UMich network,
```
ssh uniqname@greatlakes.arc-ts.umich.edu
```
From outside UMich network, use VPN or `ssh uniqname@scs.itd.umich.edu`

## Slurm

In order to submit a batch job, you have to write bash script that has specific structure for
slurm job scheduler. Here is an example slurm job script. It should be named as "XXX.sh"

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
- --account: "lsa" or "polisci_dept" will work for polisci students. You can check the acocunts you can use by `my_accounts` commnand.

If you want to run .R file, add the following after the "# The application(s)..." line.

```
R CMD BATCH --no-save --no-restore your_code.R
```

`--no-save` does not save datasets at the end of R session, and
`--no-restore` does not restores `.Rdata` file in the directory where R was started


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

## Load modules

To use any software (python, R) we have to load them first. For R, Rtidyverse is recommended because
it takes long time to install tidyverse. **You have to do the "module load" step every time you login**.

```
# search module (this search modules that contains "R" in the title.)
module keyword R

# load module 
module load Rtidyverse

```
## R packages

If you chose to use Rtidyverse, you should have R directory at your home (/home/uniqname/R).
When you want to use other packages that are not in the directory, you have to install the pacakges. 
(This is only one-time process, unlike "module load", but it can take time if you install large packages.)
To install packages, you can start R and install.package('package_title') as we always do. 



## Reference

- [UMich Great Lakes website](https://arc-ts.umich.edu/greatlakes/)
- [Slurm user guide](https://arc-ts.umich.edu/greatlakes/slurm-user-guide/)
- [Slurm workload manager](https://slurm.schedmd.com/)
- [Turorial on non-interactive R](https://github.com/gastonstat/tutorial-R-noninteractive/blob/master/02-batch-mode.Rmd)
