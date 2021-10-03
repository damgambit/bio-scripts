#!/bin/bash

#SBATCH -N 1
#SBATCH -n 8
#SBATCH -p g100_usr_prod
#SBATCH --mem=50GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_castrign2

module load profile/bioinf
module load autoload igenome_UCSC_Mus_musculus/mm10
module load bowtie/1.3.0
module load autoload cufflinks/2.2.1


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/g100_work/PROJECTS/spack/v0.16/install/0.16.2/linux-centos8-skylake_avx512/gcc-8.3.1/anaconda3-2020.07-l2bohj4adsd6r2oweeytdzrgqmjl64lt/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/g100_work/PROJECTS/spack/v0.16/install/0.16.2/linux-centos8-skylake_avx512/gcc-8.3.1/anaconda3-2020.07-l2bohj4adsd6r2oweeytdzrgqmjl64lt/etc/profile.d/conda.sh" ]; then
        . "/g100_work/PROJECTS/spack/v0.16/install/0.16.2/linux-centos8-skylake_avx512/gcc-8.3.1/anaconda3-2020.07-l2bohj4adsd6r2oweeytdzrgqmjl64lt/etc/profile.d/conda.sh"
    else
        export PATH="/g100_work/PROJECTS/spack/v0.16/install/0.16.2/linux-centos8-skylake_avx512/gcc-8.3.1/anaconda3-2020.07-l2bohj4adsd6r2oweeytdzrgqmjl64lt/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


conda activate py36

mkdir -p $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE


# CIRCexplorer2 parse -t BWA \
#   $SCRATCH/bwa/ASD/MM/$SAMPLE/bwa_mem_alignments.sam \
#   -b $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/back_spliced_junction.bed \
#   > $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/CIRCexplorer2_parse.log


# CIRCexplorer2 annotate \
#   -r $SCRATCH/GENOMES/mm10/refFlat.txt \
#   -g $IGENOME_UCSC_MUS_MUSCULUS_GENOME/genome.fa \
#   -b $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/back_spliced_junction.bed \
#   -o $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/circularRNA_known.txt \
#   > $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/CIRCexplorer2_annotate.log

CIRCexplorer2 assemble \
  -r $SCRATCH/GENOMES/mm10/refFlat.txt \
  -m $SCRATCH/TopHatResults/ASD/MM/$SAMPLE/tophat \
  -o $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/assemble \
  > $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/CIRCexplorer2_assemble.log

CIRCexplorer2 denovo \
  -r $SCRATCH/GENOMES/mm10/refFlat.txt \
  -g $IGENOME_UCSC_MUS_MUSCULUS_GENOME/genome.fa \
  -b $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/back_spliced_junction.bed \
  -d $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/assemble \
  -m $SCRATCH/TopHatResults/ASD/MM/$SAMPLE/tophat \
  -o $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/denovo
  > $SCRATCH/CIRCexplorer2Results/ASD/MM/$SAMPLE/CIRCexplorer2_denovo.log

