import os
import pandas as pd

INPUT = '/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/ASD/MM/'
KNOWN = 'circularRNA_known.txt'


projects = os.listdir(INPUT)

results = []
for proj in projects:
  runs = os.listdir(INPUT + proj)

  for run in runs:
    known = open('{}{}/{}/{}'.format(INPUT, proj, run, KNOWN)).read()

    results.append([proj, run, len(known) > 0])

df = pd.DataFrame(results, columns=["project", "run", "known_circ_found"])
df.to_csv('results.csv', index=False)