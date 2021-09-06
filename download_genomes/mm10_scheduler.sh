#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p g100_all_serial
#SBATCH --mem=2GB
#SBATCH --time 04:00:00
#SBATCH --account ELIX4_mattiucc_0


##################################################
############### Module(s) loading ################
##################################################

conda activate py36

#echo $SAMPLE
#prefetch $SAMPLE
./mm10.sh
