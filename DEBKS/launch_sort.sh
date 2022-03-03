#!/bin/sh

#SBATCH -N 1
#SBATCH -n 48
#SBATCH -p g100_usr_prod
#SBATCH --mem=300GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_mattiucc_0

module load profile/bioinf
module load autoload samtools/1.13

mkdir -p $TARGET 
rm $TARGET/* 
samtools sort -@ $THREADS $INPUT -o $TARGET/sorted.bam
echo $TARGET
samtools index -@ $THREADS $TARGET/sorted.bam
