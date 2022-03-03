#!/bin/sh

#SBATCH -N 1
#SBATCH -n 48
#SBATCH -p g100_usr_prod
#SBATCH --mem=300GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_mattiucc_0

module load profile/bioinf
module load autoload samtools/1.13

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

DEBKS count -t 48 -c /g100/home/userexternal/dgambitt/bio-scripts/DEBKS/merge_pos.txt -n /g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325538/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325547/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325541/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325543/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325548/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325539/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325556/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325558/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325537/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325552/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325553/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325544/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325531/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325534/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325545/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325550/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325549/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325555/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325546/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325551/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325529/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325540/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325533/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325532/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325536/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325530/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325542/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325535/sorted.bam
# sbatch --job-name=count --output=out/count.out --error=err/count.err count.sh
