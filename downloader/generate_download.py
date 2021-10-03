import os
import sys

print("#!/bin/bash")

for e in ["SE", "PE"]:
    projects = os.listdir(e)

    for proj in projects:
        file=open(e + '/' + proj, "r")

        for line in file:
            sample = line.strip('\n')
            run = "sbatch --export=ALL,SAMPLE={},OUTPUT_DIR=$SCRATCH/{}RTT/HSA,EXP={}/{}".format(
                sample, "PE/" if e == "PE" else "", proj, sample)
            run += " --job-name={}dl{} --output=out/{}.out --error=err/{}.err".format(
              proj[-3:], sample[-3:], sample, sample
            )
            if e == "PE":
              run += " ~/bio-scripts/downloader/download_PE.sh"
            else:
              run += " ~/bio-scripts/downloader/download_SE.sh"
            print(run)

        file.close()




# for sample in samples:
#     

