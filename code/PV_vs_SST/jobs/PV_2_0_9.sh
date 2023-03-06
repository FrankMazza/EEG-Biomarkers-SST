#!/bin/bash
#SBATCH --nodes=13
#SBATCH --ntasks-per-node=40
#SBATCH --time=08:00:00
#SBATCH --job-name='PV 2 0-9'
#SBATCH --mail-type=ALL
#SBATCH --mail-user=frank.mazza@mail.utoronto.ca
#SBATCH -o /scratch/e/etayhay/frankm/Mazza2022_output/out/PV_2_0_9_o_%j.out
#SBATCH -e /scratch/e/etayhay/frankm/Mazza2022_output/out/PV_2_0_9_e_%j.out

module load NiaEnv/2019b python/3.7.9 gcc/8.3.0 intelmpi/2019u5

source ~/.virtualenvs/alex_env/bin/activate 
unset DISPLAY

cd ../

srun python circuit.py 2000 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2001 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2002 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2003 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2004 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2005 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2006 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2007 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2008 HL23BN1 .2 Circuit_output_2
srun python circuit.py 2009 HL23BN1 .2 Circuit_output_2
