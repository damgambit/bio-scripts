import os
import sys

EXPERIMENT = sys.argv[1] # PRJNA347654
THREADS = sys.argv[2]
PE = sys.argv[3]

if PE == "PE":
  samples = os.listdir("/g100_scratch/userexternal/dgambitt/PE/ASD/MM/" + EXPERIMENT)
else:
  samples = os.listdir("/g100_scratch/userexternal/dgambitt/ASD/MM/" + EXPERIMENT)
samples = set([s.split('.')[0].replace('_1', '').replace('_2', '') for s in samples])

print(samples)

print("#!/bin/bash")

for sample in samples:
    run = "sbatch --export=ALL,SAMPLE={}/{},THREADS={},OUT={}".format(
              EXPERIMENT, sample, THREADS, sample)
    run += " --job-name={}_c2 --output=out/{}.out --error=err/{}.err".format(
      sample[-3:], sample, sample
    )
    run += " ~/bio-scripts/circ2/run_pipeline_from_bwa.sh"
    print(run)

