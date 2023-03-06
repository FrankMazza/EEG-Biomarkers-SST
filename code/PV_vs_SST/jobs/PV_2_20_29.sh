#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='PV 2 20-29'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2022_output/out/PV_2_20_29_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2022_output/out/PV_2_20_29_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ../

srun python circuit.py 2020 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2021 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2022 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2023 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2024 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2025 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2026 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2027 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2028 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2029 HL23BN1 .2 Circuit_output_2
