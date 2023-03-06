#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=09:00:00
#SBATCH --job-name='LFPy Circuit M 40-49'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/M_40_49_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/M_40_49_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_m.py 2040
srun python circuit_m.py 2041
srun python circuit_m.py 2042
srun python circuit_m.py 2043
srun python circuit_m.py 2044
srun python circuit_m.py 2045
srun python circuit_m.py 2046
srun python circuit_m.py 2047
srun python circuit_m.py 2048
srun python circuit_m.py 2049
