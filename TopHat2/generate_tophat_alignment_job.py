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


print("#!/bin/bash")

for sample in samples:
    run = "sbatch --export=ALL,SAMPLE={}/{},THREADS={},OUT={}".format(
              EXPERIMENT, sample, THREADS, sample)
    run += " --job-name={}_thalign --output=out/{}.out --error=err/{}.err".format(
      sample[-3:], sample, sample
    )

    if PE == "PE":
      run += " ~/bio-scripts/TopHat2/launch_tophat2_pe.sh"
    else:
      run += " ~/bio-scripts/TopHat2/launch_tophat2.sh"
    print(run)

