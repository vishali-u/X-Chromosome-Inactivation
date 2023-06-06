# Call heterozygous SNPs on the HCA kidney cortex data

library(inactiveXX)
library(future)
library(Rsamtools)
library(seqinr)

refGenomePath <- '/home/umaiyal1/scratch/ref_package/GRCh38/fasta/genome.fa'
bamsPath <- '/home/umaiyal1/scratch/hca_kidcortex/bams'

nParallel <- 12

# Load in BAM files for Control 5

cont5Bam1 <- scanBam(paste(bamsPath, '/Cont5_S8_L004_R1_001Aligned.sortedByCoord.out.bam', sep = ''))
#cont5Bam2 <- scanBam(paste(bamsPath, '/Cont5_S8_L004_R2_001Aligned.sortedByCoord.out.bam', sep = ''))
#cont5Bam3 <- scanBam(paste(bamsPath, '/Control_5_S6_L001_R1_001Aligned.sortedByCoord.out.bam', sep = ''))
#cont5Bam4 <- scanBam(paste(bamsPath, '/Control_5_S6_L001_R2_001Aligned.sortedByCoord.out.bam', sep = ''))
#cont5Bam5 <- scanBam(paste(bamsPath, '/Control_5_S6_L001_R3_001Aligned.sortedByCoord.out.bam', sep = ''))

#bams <- c(cont5Bam1, cont5Bam2)

# Load refGenome file
refGenome <- read.fasta(refGenomePath)

hSNPs <- hetSNPsFromRNA(cont5Bam1,
                        refGenome,
                        outputs = sprintf('%s_scRNA_1kSNPs_XCnts.tsv', names(cont5Bam1)),
                        nParallel = nParallel)
