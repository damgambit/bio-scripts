import os
import sys

EXPERIMENT = sys.argv[1] # PRJNA347654
THREADS = sys.argv[2]
PE = sys.argv[3]
SYN = sys.argv[4]
GEN = sys.argv[5]

samples = os.listdir("/g100_scratch/userexternal/dgambitt/{}{}/{}/{}".format(
  "PE/" if PE == "PE" else "", SYN, GEN, EXPERIMENT))

samples = set([s.split('.')[0].replace('_1', '').replace('_2', '') for s in samples])

for sample in samples:
    run = "sbatch --export=ALL,SAMPLE={}/{},RUN={},THREADS={},OUT={}".format(
              EXPERIMENT, sample, sample, THREADS, sample)
    run += " --job-name={}_bwa --output=out/{}.out --error=err/{}.err".format(
      sample[-3:], sample, sample
    )

    try:
      fasta = os.listdir("/g100_scratch/userexternal/dgambitt/{}{}/{}/{}/{}".format(
        "PE/" if PE == "PE" else "", SYN, GEN, EXPERIMENT, sample))
  
      if len(fasta) == 0: continue

    except:
      continue

    try:
      res = open("/g100_scratch/userexternal/dgambitt/bwa/{}/{}/{}/{}/bwa_mem_alignments.sam".format(
        SYN, GEN, EXPERIMENT, sample
      )).readline()

      if len(res) > 0: continue
    except:
      pass


    if PE == "PE":
      if GEN == "HSA":
        run += " ~/bio-scripts/BWA/bwa_mem_hsa_pe.sh"
      else:
        run += " ~/bio-scripts/BWA/bwa_mem_pe.sh"
    else:
      if GEN == "HSA":
        run += " ~/bio-scripts/BWA/bwa_mem_hsa.sh"
      else:
        run += " ~/bio-scripts/BWA/bwa_mem.sh"
    print(run)

