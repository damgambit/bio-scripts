#!/bin/bash

# mouse RefSeq gene annotation file
echo "Starting ref."
time python /g100/home/userexternal/dgambitt/CIRCexplorer2/circ2/fetch_ucsc.py mm10 ref $SCRATCH/GENOMES/mm10/mm10_ref.txt
echo "Done ref."

# mouse KnownGenes gene annotation file
echo "Starting kg."
time python /g100/home/userexternal/dgambitt/CIRCexplorer2/circ2/fetch_ucsc.py mm10 kg $SCRATCH/GENOMES/mm10/mm10_kg.txt
echo "Done kg."

# mouse Ensembl gene annotation file
# python /g100/home/userexternal/dgambitt/CIRCexplorer2/circ2/fetch_ucsc.py mm10 ens mm10_ens.txt
# mouse reference genome sequence file
echo "Starting fa."
time python /g100/home/userexternal/dgambitt/CIRCexplorer2/circ2/fetch_ucsc.py mm10 fa $SCRATCH/GENOMES/mm10/mm10.fa
echo "Done fa."

# cut -f2-11 mm10_ref.txt|genePredToGtf file stdin mm10_ref.gtf

