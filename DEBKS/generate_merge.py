import os
import sys

EXPERIMENT = sys.argv[1] # PRJNA347654
THREADS = sys.argv[2]
PE = sys.argv[3]
SYN = sys.argv[4]
GEN = sys.argv[5]

samples = os.listdir("/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/{}/{}/{}/".format(
      SYN, GEN, EXPERIMENT
    ))

samples = set([s.split('.')[0].replace('_1', '').replace('_2', '') for s in samples])

cmd = "DEBKS  merge -s circexplorer2 -n "
for sample in samples:
  try:
    open("/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/{}/{}/{}/{}/circularRNA_known.txt".format(
      SYN, GEN, EXPERIMENT, sample
    ))
  except:
    continue
  cmd += "/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/{}/{}/{}/{}/circularRNA_known.txt,".format(
      SYN, GEN, EXPERIMENT, sample
    )

print(cmd[:-1])
