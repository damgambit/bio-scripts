#!/bin/sh

#SBATCH -N 1
#SBATCH -n 48
#SBATCH -p g100_usr_prod
#SBATCH --mem=300GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_mattiucc_0

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

sed -i 's/circular_RNA\///g' merge_circ.txt
DEBKS dec -t 48 -c merge_circ.txt -l linear_jun.txt -e anno_len.txt

# sbatch --job-name=dec --output=out/dec.out --error=err/dec.err dec.sh

