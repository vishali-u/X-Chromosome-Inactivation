#!/bin/bash

#SBATCH --cpus-per-task=8
#SBATCH --mem=256G
#SBATCH --job-name=find_hSNPs
#SBATCH --time=12:00:00
#SBATCH --output=find_hSNPs.out
#SBATCH --error=find_hSNPs.err

module load r/4.2.2
module load StdEnv/2020
module load gcc/9.3.0
module load bcftools/1.16
module load apptainer/1.1.8

Rscript find_hSNPs.R
