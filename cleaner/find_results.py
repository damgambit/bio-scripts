import os
import pandas as pd

INPUT = '/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/RTT/HSA/'
KNOWN = 'circularRNA_known.txt'


projects = os.listdir(INPUT)

results = []
for proj in projects:
  runs = os.listdir(INPUT + proj)

  for run in runs:
    try:
      known = open('{}{}/{}/{}'.format(INPUT, proj, run, KNOWN)).readline()

      results.append([proj, run, len(known) > 0])
    except Exception as e:
      print("error", e, run)

df = pd.DataFrame(results, columns=["project", "run", "known_circ_found"])
df.to_csv('results.csv', index=False)