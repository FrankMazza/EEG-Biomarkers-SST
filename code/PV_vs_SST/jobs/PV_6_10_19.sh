#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='PV 6 10-19'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2022_output/out/PV_6_10_19_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2022_output/out/PV_6_10_19_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ../

srun python circuit.py 2010 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2011 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2012 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2013 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2014 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2015 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2016 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2017 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2018 HL23BN1 .6 Circuit_output_6
srun python circuit.py 2019 HL23BN1 .6 Circuit_output_6
