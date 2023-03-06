#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='LFPy Circuit H 20-29'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/H_20_29_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/H_20_29_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_h.py 1020
srun python circuit_h.py 1021
srun python circuit_h.py 1022
srun python circuit_h.py 1023
srun python circuit_h.py 1024
srun python circuit_h.py 1025
srun python circuit_h.py 1026
srun python circuit_h.py 1027
srun python circuit_h.py 1028
srun python circuit_h.py 1029
