#!/bin/bash

#SBATCH -N 1
#SBATCH -n 48
#SBATCH -p g100_usr_prod
#SBATCH --mem=300GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_castrign2

module load profile/bioinf
module load autoload illumina_genome_Homo_sapiens/hg38

module load bwa/0.7.12

mkdir -p $SCRATCH/bwa/RTT/HSA/$SAMPLE

bwa mem $ILLUMINA_GENOME_HOMO_SAPIENS_BWAIndex/genome.fa \
  $SCRATCH/RTT/HSA/$SAMPLE/$RUN.fastq \
  -t $THREADS > $SCRATCH/bwa/RTT/HSA/$SAMPLE/bwa_mem_alignments.sam