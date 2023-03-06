#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='LFPy Circuit H 10-19'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/H_10_19_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/H_10_19_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_h.py 1010
srun python circuit_h.py 1011
srun python circuit_h.py 1012
srun python circuit_h.py 1013
srun python circuit_h.py 1014
srun python circuit_h.py 1015
srun python circuit_h.py 1016
srun python circuit_h.py 1017
srun python circuit_h.py 1018
srun python circuit_h.py 1019
