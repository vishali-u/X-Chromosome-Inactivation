# Call heterozygous SNPs on the HCA kidney cortex data

library(inactiveXX)
library(Rsamtools)
library(seqinr)
library(devtools)

setwd('/home/umaiyal1/')

# Load reference genome (change to genome.fa when done testing)
refGenomePath <- '/home/umaiyal1/scratch/ref_package/GRCh38/fasta/genome.fa'

bam1 <- '/home/umaiyal1/scratch/hca_blood/bams/JP_RIK_B001_L001_5GEX_H005.R1Aligned.sortedByCoord.out.bam'
bam2 <- '/home/umaiyal1/scratch/hca_blood/bams/JP_RIK_B001_L001_5GEX_H005.R2Aligned.sortedByCoord.out.bam'

nParallel <- 8

names <- c('JP_RIK_B001_L001_5GEX_H005.R1', 'JP_RIK_B001_L001_5GEX_H005_R2')

bams10X <- c(bam1, bam2)

bams10X <- setNames(bams10X, names)

bams10X

# Load in BAM files for Control 5 (correspond to a female donor)
hSNPs <- hetSNPsFromRNA(bams10X,
                        refGenomePath,
                        outputs = sprintf('%s_scRNA_1kSNPs_XCnts.tsv', names(bams10X)),
                        nParallel = nParallel)
