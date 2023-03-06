#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='LFPy Circuit H 30-39'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2021_output/out/H_30_39_mazza2021_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2021_output/out/H_30_39_mazza2021_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ..

srun python circuit_h.py 1030
srun python circuit_h.py 1031
srun python circuit_h.py 1032
srun python circuit_h.py 1033
srun python circuit_h.py 1034
srun python circuit_h.py 1035
srun python circuit_h.py 1036
srun python circuit_h.py 1037
srun python circuit_h.py 1038
srun python circuit_h.py 1039
