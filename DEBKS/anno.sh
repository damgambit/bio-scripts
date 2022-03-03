module load profile/bioinf
module load autoload samtools/1.13
# module show igenome_UCSC_Mus_musculus/mm10
module load autoload illumina_genome_Homo_sapiens/hg38
module load tabix

cp $GENOME/genome.fa ./genome.fa
samtools faidx genome.fa
grep -v '#' $GENES/genes.gtf |sort -k 1,1 -k 4,4n |bgzip >sort.gtf.gz
tabix sort.gtf.gz

DEBKS anno -c /g100/home/userexternal/dgambitt/bio-scripts/DEBKS/merge_pos.txt \
  -g sort.gtf.gz \
  -m genome.fa
