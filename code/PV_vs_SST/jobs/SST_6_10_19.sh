#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='SST 6 10-19'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/PV_vs_SST/out/SST_6_10_19_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/PV_vs_SST/out/SST_6_10_19_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ../

srun python SST_6.py 2010
srun python SST_6.py 2011
srun python SST_6.py 2012
srun python SST_6.py 2013
srun python SST_6.py 2014
srun python SST_6.py 2015
srun python SST_6.py 2016
srun python SST_6.py 2017
srun python SST_6.py 2018
srun python SST_6.py 2019
