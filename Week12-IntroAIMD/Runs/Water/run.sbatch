#!/bin/bash

#SBATCH -N1 --ntasks-per-node=12 --cpus-per-task=1 -t 6:00:00 --mem=20GB

module purge
module load cp2k/openmpi/intel/20201212

mpirun -np 12 cp2k.popt -i water.inp -o water_aimd_1ps_0.5fs.log
