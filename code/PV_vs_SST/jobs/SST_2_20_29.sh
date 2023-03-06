#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='SST 2 20-29'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/PV_vs_SST/out/SST_2_20_29_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/PV_vs_SST/out/SST_2_20_29_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ../

srun python SST_2.py 2020
srun python SST_2.py 2021
srun python SST_2.py 2022
srun python SST_2.py 2023
srun python SST_2.py 2024
srun python SST_2.py 2025
srun python SST_2.py 2026
srun python SST_2.py 2027
srun python SST_2.py 2028
srun python SST_2.py 2029
