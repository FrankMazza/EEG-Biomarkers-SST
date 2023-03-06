#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='LFPy Circuit H 0-9'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/H_0_9_mazza2021_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/H_0_9_mazza2021_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_h.py 1000
srun python circuit_h.py 1001
srun python circuit_h.py 1002
srun python circuit_h.py 1003
srun python circuit_h.py 1004
srun python circuit_h.py 1005
srun python circuit_h.py 1006
srun python circuit_h.py 1007
srun python circuit_h.py 1008
srun python circuit_h.py 1009
