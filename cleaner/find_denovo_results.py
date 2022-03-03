import os
import pandas as pd

INPUT = '/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/ASD/MM/'
KNOWN = 'denovo/novel_circ.txt'


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
df.to_csv('mm_asd_denovo_results.csv', index=False)