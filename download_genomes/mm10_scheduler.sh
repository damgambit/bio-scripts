#!/bin/bash

#SBATCH -N 1
#SBATCH -n 1
#SBATCH -p g100_usr_prod
#SBATCH --mem=2GB
#SBATCH --time 4:00:00
#SBATCH --account ELIX4_castrign2
#SBATCH --job-name=dlmm10


##################################################
############### Module(s) loading ################
##################################################

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

#echo $SAMPLE
#prefetch $SAMPLE
./mm10.sh
