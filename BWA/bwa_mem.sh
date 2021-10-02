#!/bin/bash

#SBATCH -N 1
#SBATCH -n 48
#SBATCH -p g100_usr_prod
#SBATCH --mem=300GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_castrign2

module load profile/bioinf
module load autoload igenome_UCSC_Mus_musculus/mm10

module load bwa/0.7.12

mkdir -p $SCRATCH/bwa/ASD/MM/$SAMPLE

bwa mem $IGENOME_UCSC_MUS_MUSCULUS_BWAIndex/genome.fa \
  $SCRATCH/ASD/MM/$SAMPLE.fastq \
  -t $THREADS > $SCRATCH/bwa/ASD/MM/$SAMPLE/bwa_mem_alignments.sam