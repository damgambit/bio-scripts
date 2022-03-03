import os
import sys

EXPERIMENT = sys.argv[1] # PRJNA347654
THREADS = sys.argv[2]
PE = sys.argv[3]
SYN = sys.argv[4]
GEN = sys.argv[5]

print('''
#!/bin/bash

#SBATCH -N 1
#SBATCH -n {}
#SBATCH -p g100_usr_prod
#SBATCH --mem=24GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_castrign2

module load profile/bioinf
module load autoload samtools/1.13
'''.format(THREADS))

samples = os.listdir("/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/{}/{}/{}/".format(
      SYN, GEN, EXPERIMENT
    ))

samples = set([s.split('.')[0].replace('_1', '').replace('_2', '') for s in samples])

samsort = "samtools sort -@ " + THREADS
samindex = "samtools index -@ " + THREADS
for sample in samples:
  try:
    open("/g100_scratch/userexternal/dgambitt/bwa/{}/{}/{}/{}/bwa_mem_alignments.sam".format(
      SYN, GEN, EXPERIMENT, sample
    ))
  except:
    continue
  # print("mkdir -p /g100_scratch/userexternal/dgambitt/sorted_indexed/{}/{}/{}/{} ".format(
  #     SYN, GEN, EXPERIMENT, sample
  #   ))
  # print("rm /g100_scratch/userexternal/dgambitt/sorted_indexed/{}/{}/{}/{}/* ".format(
  #   SYN, GEN, EXPERIMENT, sample
  # ))
  # print(samsort + "/g100_scratch/userexternal/dgambitt/bwa/{}/{}/{}/{}/bwa_mem_alignments.sam ".format(
  #     SYN, GEN, EXPERIMENT, sample
  #   ) + "-o /g100_scratch/userexternal/dgambitt/sorted_indexed/{}/{}/{}/{}/sorted ".format(
  #     SYN, GEN, EXPERIMENT, sample
  #   ))
  # print(samindex + "/g100_scratch/userexternal/dgambitt/sorted_indexed/{}/{}/{}/{}/sorted ".format(
  #     SYN, GEN, EXPERIMENT, sample
  #   ))
  print("sbatch --export=ALL,TARGET={},INPUT={},THREADS={} --job-name={}_c2 --output=out/{}.out --error=err/{}.err {}".format(
    "/g100_scratch/userexternal/dgambitt/sorted_indexed/{}/{}/{}/{}".format(
      SYN, GEN, EXPERIMENT, sample
    ), "/g100_scratch/userexternal/dgambitt/bwa/{}/{}/{}/{}/bwa_mem_alignments.sam".format(
      SYN, GEN, EXPERIMENT, sample
    ), THREADS, sample[-3:], sample, sample,
    "~/bio-scripts/DEBKS/launch_sort.sh"))
  # break