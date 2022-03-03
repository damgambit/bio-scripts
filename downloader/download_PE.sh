#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p g100_all_serial
#SBATCH --mem=2GB
#SBATCH --time 04:00:00
#SBATCH --account ELIX4_castrign2


##################################################
############### Module(s) loading ################
##################################################

### Pipeline genome loading

### Pipeline module(s) loading
module load autoload profile/bioinf

### Step-specific module(s) loading
module load autoload sra/2.9.6

mkdir -p $OUTPUT_DIR/$EXP/

#echo $SAMPLE
#prefetch $SAMPLE
fastq-dump --split-files $SAMPLE -O $OUTPUT_DIR/$EXP/

