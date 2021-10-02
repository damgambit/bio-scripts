#!/bin/bash

#SBATCH -N 1
#SBATCH -n 20
#SBATCH -p g100_usr_prod
#SBATCH --mem=100GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_mattiucc_0

module load profile/bioinf
module load autoload igenome_UCSC_Mus_musculus/mm10
module load autoload star/2.7.9a

mkdir -p $SCRATCH/STARResults/ASD/MM/$SAMPLE

STAR --chimSegmentMin 10 --runThreadN $THREADS \
    --genomeDir $IGENOME_UCSC_MUS_MUSCULUS_BowtieIndex/genome \
    --readFilesIn $SCRATCH/ASD/MM/$SAMPLE.fastq
