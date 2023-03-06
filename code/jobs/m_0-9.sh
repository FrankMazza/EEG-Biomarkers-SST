#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=09:00:00
#SBATCH --job-name='LFPy Circuit M 0-9'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/M_0_9_mazza2021_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/M_0_9_mazza2021_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_m.py 2000
srun python circuit_m.py 2001
srun python circuit_m.py 2002
srun python circuit_m.py 2003
srun python circuit_m.py 2004
srun python circuit_m.py 2005
srun python circuit_m.py 2006
srun python circuit_m.py 2007
srun python circuit_m.py 2008
srun python circuit_m.py 2009
