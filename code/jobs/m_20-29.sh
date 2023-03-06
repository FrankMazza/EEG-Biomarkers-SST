#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=09:00:00
#SBATCH --job-name='LFPy Circuit M 20-29'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/M_20_29_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/M_20_29_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_m.py 2020
srun python circuit_m.py 2021
srun python circuit_m.py 2022
srun python circuit_m.py 2023
srun python circuit_m.py 2024
srun python circuit_m.py 2025
srun python circuit_m.py 2026
srun python circuit_m.py 2027
srun python circuit_m.py 2028
srun python circuit_m.py 2029
