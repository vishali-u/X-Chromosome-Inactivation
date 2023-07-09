# Call heterozygous SNPs on the one sample from the HCA AIDA data

library(inactiveXX)
library(Rsamtools)
library(seqinr)
library(devtools)

outDir <- '/home/umaiyal1/X-Chromosome-Inactivation/results'

# Reference genome DNA sequence
refGenome <- '/home/umaiyal1/scratch/ref_package/GRCh38/fasta/genome.fa'

# scRNA BAM files
bam1 <- '/home/umaiyal1/scratch/hca_blood/bams/JP_RIK_B001_L001_5GEX_H005.R1Aligned.sortedByCoord.out.bam'
bam2 <- '/home/umaiyal1/scratch/hca_blood/bams/JP_RIK_B001_L001_5GEX_H005.R2Aligned.sortedByCoord.out.bam'

nParallel <- 8

# Change names
names <- c('JP_RIK_B001_L001_5GEX_H005_R1', 'JP_RIK_B001_L001_5GEX_H005_R2')

bams10X <- c(bam1, bam2)

bams10X <- setNames(bams10X, names)

#bams10X

hSNPs <- hetSNPsFromRNA(bams10X,
                        refGenome,
                        outputs = file.path(outDir, sprintf('%s_XCnts.tsv', names(bams10X))),
                        nParallel = nParallel)
