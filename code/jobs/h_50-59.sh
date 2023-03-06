#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='LFPy Circuit H 50-59'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/H_50_59_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/H_50_59_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_h.py 1050
srun python circuit_h.py 1051
srun python circuit_h.py 1052
srun python circuit_h.py 1053
srun python circuit_h.py 1054
srun python circuit_h.py 1055
srun python circuit_h.py 1056
srun python circuit_h.py 1057
srun python circuit_h.py 1058
srun python circuit_h.py 1059
