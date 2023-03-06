#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='LFPy Circuit H 40-49'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/H_40_49_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/H_40_49_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_h.py 1040
srun python circuit_h.py 1041
srun python circuit_h.py 1042
srun python circuit_h.py 1043
srun python circuit_h.py 1044
srun python circuit_h.py 1045
srun python circuit_h.py 1046
srun python circuit_h.py 1047
srun python circuit_h.py 1048
srun python circuit_h.py 1049
