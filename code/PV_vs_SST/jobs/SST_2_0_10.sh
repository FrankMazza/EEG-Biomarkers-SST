#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='SST 2 10-19'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/PV_vs_SST/out/SST_2_10_19_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/PV_vs_SST/out/SST_2_10_19_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate
unset DISPLAY

cd ../

srun python SST_2.py 2000
srun python SST_2.py 2001
srun python SST_2.py 2002
srun python SST_2.py 2003
srun python SST_2.py 2004
srun python SST_2.py 2005
srun python SST_2.py 2006
srun python SST_2.py 2007
srun python SST_2.py 2008
srun python SST_2.py 2009
