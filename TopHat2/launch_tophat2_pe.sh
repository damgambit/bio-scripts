#!/bin/bash

#SBATCH -N 1
#SBATCH -n 48
#SBATCH -p g100_usr_prod
#SBATCH --mem=320GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_castrign2

module load profile/bioinf
module load autoload igenome_UCSC_Mus_musculus/mm10
module load autoload bedtools/2.30.0
module load bowtie/1.3.0


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


conda activate tophat

mkdir -p $SCRATCH/TopHatResults/ASD/MM/$SAMPLE

tophat2 -a 6 --microexon-search -m 2 -p $THREADS \
  -G /cineca/prod/opt/data/igenome_UCSC_Mus_musculus/mm10/none/Annotation/Genes/genes.gtf \
  -o $SCRATCH/TopHatResults/ASD/MM/$SAMPLE/tophat \
  $IGENOME_UCSC_MUS_MUSCULUS_Bowtie2Index/genome \
  $SCRATCH/PE/ASD/MM/$SAMPLE\_1.fastq \
  $SCRATCH/PE/ASD/MM/$SAMPLE\_2.fastq \

# bedtools bamtofastq -i $SCRATCH/TopHatResults/ASD/MM/$SAMPLE/tophat/unmapped.bam \
#     -fq $SCRATCH/TopHatResults/ASD/MM/$SAMPLE/tophat/unmapped.fastq

# tophat2 -o tophat_fusion -p $THREADS --fusion-search --keep-fasta-order --bowtie1 \
#     --no-coverage-search $IGENOME_UCSC_MUS_MUSCULUS_BowtieIndex/genome \
#     $SCRATCH/TopHatResults/ASD/MM/$SAMPLE/tophat/unmapped.fastq
