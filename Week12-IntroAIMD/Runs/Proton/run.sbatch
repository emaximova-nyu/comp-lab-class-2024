#!/bin/bash

#SBATCH --job-name=p_aimd
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=12
#SBATCH --mem=20GB
#SBATCH --time=06:00:00


module purge
module load cp2k/openmpi/intel/20201212

mpirun -np 12 cp2k.popt -i proton.inp -o proton_aimd_1ps_0.5fs.log
