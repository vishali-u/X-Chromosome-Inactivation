#!/bin/bash

#SBATCH --cpus-per-task=12
#SBATCH --mem=128G
#SBATCH --job-name=samp2_hSNPs
#SBATCH --time=12:00:00
#SBATCH --output=samp2_hSNPs.out
#SBATCH --error=samp2_hSNPs.err

module load r/4.2.2
module load StdEnv/2020
module load gcc/9.3.0
module load bcftools/1.16
module load apptainer/1.1.8

Rscript sample2.R
