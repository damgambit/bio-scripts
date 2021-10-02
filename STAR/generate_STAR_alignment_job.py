import os
import sys

EXPERIMENT = sys.argv[1] # PRJNA347654
THREADS = sys.argv[2]

samples = os.listdir("/g100_scratch/userexternal/dgambitt/ASD/MM/" + EXPERIMENT)
samples = set([s.split('.')[0] for s in samples])

print(samples)

print("#!/bin/bash")

for sample in samples:
    run = "sbatch --export=ALL,SAMPLE={}/{},THREADS={},OUT={}".format(
              EXPERIMENT, sample, THREADS, sample)
    run += " --job-name={}_thalign --output={}.out --error={}.err".format(
      sample[-3:], sample, sample
    )
    run += " ~/bio-scripts/TopHat2/launch_tophat2.sh"
    print(run)

