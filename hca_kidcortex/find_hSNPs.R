# Call heterozygous SNPs on the HCA kidney cortex data

library(inactiveXX)
library(Rsamtools)
library(seqinr)
library(devtools)

# Load reference genome
refGenomePath <- '/home/umaiyal1/scratch/ref_package/GRCh38/fasta/genome.fa'

bamsPath <- '/home/umaiyal1/scratch/hca_kidcortex/bams'

nParallel <- 8

# Load in BAM files for Control 5 (correspond to a female donor)

bam1 <- scanBam(paste(bamsPath, '/Cont5_S8_L004_R1_001Aligned.sortedByCoord.out.bam', sep = ''))
names(bam1[[1]])

bam2 <- scanBam(paste(bamsPath, '/Cont5_S8_L004_R2_001Aligned.sortedByCoord.out.bam', sep = ''))
names(bam1[[1]])

bams <- c(bam1, bam2)
names(bams)

refGenome <- read.fasta(refGenomePath)

hSNPs <- hetSNPsFromRNA(bams,
                        refGenome,
                        outputs = sprintf('%s_scRNA_1kSNPs_XCnts.tsv', names(bams)),
                        nParallel = nParallel)
