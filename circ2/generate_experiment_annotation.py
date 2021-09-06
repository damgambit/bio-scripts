import os
import sys

EXPERIMENT = sys.argv[1]
REF = sys.argv[1]
GENOME = sys.argv[1]
GTF = sys.argv[1]
THREADS = sys.argv[1]
OUT = sys.argv[1]


samples = os.listdir("/g100_scratch/userexternal/dgambitt/ASD/MM/" + EXPERIMENT)
samples = set([s.split('.')[0] for s in samples])

print(samples)

print("#!/bin/bash")

for sample in samples:
    run = "sbatch --export=SAMPLE={},REF={},GENOME={},GTF={},THREADS={},OUT={}".format(
              sample,REF,GENOME,GTF,THREADS,OUT)
    run += " --job_name={}_annotation --output={}.out --error={}.err".format(
      sample, sample, sample
    )
    run += "annotate.sh"
    print(run)

