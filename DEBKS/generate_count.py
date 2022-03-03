import os
import sys

EXPERIMENT = sys.argv[1] # PRJNA347654
THREADS = sys.argv[2]
PE = sys.argv[3]
SYN = sys.argv[4]
GEN = sys.argv[5]
MERGE_POST_PATH = sys.argv[6]

print('''#!/bin/sh

#SBATCH -N 1
#SBATCH -n {}
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
'''.format(THREADS))

samples = os.listdir("/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/{}/{}/{}/".format(
      SYN, GEN, EXPERIMENT
    ))

samples = set([s.split('.')[0].replace('_1', '').replace('_2', '') for s in samples])

cmd = "DEBKS count -t 48 -c {} -n ".format(MERGE_POST_PATH)
for sample in samples:
  try:
    open("/g100_scratch/userexternal/dgambitt/sorted_indexed/{}/{}/{}/{}/sorted.bam".format(
      SYN, GEN, EXPERIMENT, sample
    ))
  except:
    continue
  cmd += "/g100_scratch/userexternal/dgambitt/sorted_indexed/{}/{}/{}/{}/sorted.bam,".format(
      SYN, GEN, EXPERIMENT, sample
    )

print(cmd[:-1])

print("# sbatch --job-name=count --output=out/count.out --error=err/count.err count.sh")
