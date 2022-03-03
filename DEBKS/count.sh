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

DEBKS count -t 48 -c /g100/home/userexternal/dgambitt/bio-scripts/DEBKS/merge_pos.txt -n /g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325538/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325547/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325541/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325543/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325548/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325539/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325556/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325558/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325537/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325552/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325553/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325544/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325531/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325534/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325545/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325550/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325549/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325555/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325546/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325551/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325529/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325540/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325533/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325532/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325536/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325530/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325542/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325535/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314984/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314948/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314980/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314928/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314935/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314955/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314976/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314990/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314978/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314917/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314987/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314986/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314982/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314940/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314959/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314946/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314988/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314975/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314916/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314977/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314929/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314951/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314927/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314965/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314967/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314943/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314956/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314932/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314954/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314968/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314949/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314952/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314944/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314939/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314963/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314971/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314973/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314966/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314953/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314942/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314974/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314937/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314941/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314989/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314920/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314926/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314961/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314964/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314972/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314930/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314991/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314947/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314962/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314921/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314919/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314923/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314922/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314924/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314970/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314938/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314960/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314979/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314985/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314925/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314981/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314936/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314934/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314958/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314957/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314918/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314969/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314933/sorted.bam,/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA509687/SRR8314983/sorted.bam
# sbatch --job-name=count --output=out/count.out --error=err/count.err count.sh
