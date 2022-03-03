import os
import pandas as pd

# Change RTT/HSA/ as needed
INPUT = '/g100_scratch/userexternal/dgambitt/CIRCexplorer2Results/RTT/HSA/'
KNOWN = 'circularRNA_known.txt'


projects = os.listdir(INPUT)

results = []
for proj in projects:
  runs = os.listdir(INPUT + proj)

  for run in runs:
    known = open('{}{}/{}/{}'.format(INPUT, proj, run, KNOWN)).read()

    if len(known) > 0:
      known = known.split('\n')
      known = [k.split('\t') for k in known]
      df = pd.DataFrame(known, columns=[
        "chrom", "start", "end",
        "name", "score", "strand",
        "thickStart", "thickEnd", "itemRgb",
        "exonCount", "exonSizes", "exonOffsets",
        "readNumber", "circType", "geneName",
        "isoformName", "index", "flankIntron",
        ])
      try:
        os.system('mkdir -p results/RTT/HSA/{}/{}/'.format(proj, run))
      except:
        pass
      df.to_csv(
        'results/RTT/HSA/{}/{}/knownCirc.csv'.format(proj, run), index=False)



