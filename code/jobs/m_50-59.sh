#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=09:00:00
#SBATCH --job-name='LFPy Circuit M 50-59'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/M_50_59_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/M_50_59_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_m.py 2050
srun python circuit_m.py 2051
srun python circuit_m.py 2052
srun python circuit_m.py 2053
srun python circuit_m.py 2054
srun python circuit_m.py 2055
srun python circuit_m.py 2056
srun python circuit_m.py 2057
srun python circuit_m.py 2058
srun python circuit_m.py 2059
