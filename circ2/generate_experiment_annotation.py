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
    run = "sbatch --export=ALL,SAMPLE={}/{},THREADS={},OUT={}".format(
              EXPERIMENT, sample, THREADS, sample)
    run += " --job-name={}_c2 --output=out/{}.out --error=err/{}.err".format(
      sample[-3:], sample, sample
    )
    fasta = os.listdir("/g100_scratch/userexternal/dgambitt/{}{}/{}/{}/{}".format(
      "PE/" if PE == "PE" else "", SYN, GEN, EXPERIMENT, sample))

    if len(fasta) == 0: continue

    try:

      res = open("/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/{}/{}/{}/{}/circularRNA_known.txt".format(
        SYN, GEN, EXPERIMENT, sample
      )).readline()

      if len(res) > 0: continue
    except:
      pass

    run += " ~/bio-scripts/circ2/run_pipeline_from_bwa_hsa.sh"
    print(run)

