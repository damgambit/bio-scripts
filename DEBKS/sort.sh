
#!/bin/bash

#SBATCH -N 1
#SBATCH -n 48
#SBATCH -p g100_usr_prod
#SBATCH --mem=24GB
#SBATCH --time 24:00:00
#SBATCH --account ELIX4_castrign2

module load profile/bioinf
module load autoload samtools/1.13

sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325551,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325551/bwa_mem_alignments.sam,THREADS=48 --job-name=551_c2 --output=out/SRR6325551.out --error=err/SRR6325551.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325530,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325530/bwa_mem_alignments.sam,THREADS=48 --job-name=530_c2 --output=out/SRR6325530.out --error=err/SRR6325530.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325549,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325549/bwa_mem_alignments.sam,THREADS=48 --job-name=549_c2 --output=out/SRR6325549.out --error=err/SRR6325549.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325537,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325537/bwa_mem_alignments.sam,THREADS=48 --job-name=537_c2 --output=out/SRR6325537.out --error=err/SRR6325537.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325533,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325533/bwa_mem_alignments.sam,THREADS=48 --job-name=533_c2 --output=out/SRR6325533.out --error=err/SRR6325533.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325545,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325545/bwa_mem_alignments.sam,THREADS=48 --job-name=545_c2 --output=out/SRR6325545.out --error=err/SRR6325545.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325536,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325536/bwa_mem_alignments.sam,THREADS=48 --job-name=536_c2 --output=out/SRR6325536.out --error=err/SRR6325536.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325550,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325550/bwa_mem_alignments.sam,THREADS=48 --job-name=550_c2 --output=out/SRR6325550.out --error=err/SRR6325550.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325538,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325538/bwa_mem_alignments.sam,THREADS=48 --job-name=538_c2 --output=out/SRR6325538.out --error=err/SRR6325538.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325534,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325534/bwa_mem_alignments.sam,THREADS=48 --job-name=534_c2 --output=out/SRR6325534.out --error=err/SRR6325534.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325544,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325544/bwa_mem_alignments.sam,THREADS=48 --job-name=544_c2 --output=out/SRR6325544.out --error=err/SRR6325544.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325539,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325539/bwa_mem_alignments.sam,THREADS=48 --job-name=539_c2 --output=out/SRR6325539.out --error=err/SRR6325539.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325543,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325543/bwa_mem_alignments.sam,THREADS=48 --job-name=543_c2 --output=out/SRR6325543.out --error=err/SRR6325543.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325531,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325531/bwa_mem_alignments.sam,THREADS=48 --job-name=531_c2 --output=out/SRR6325531.out --error=err/SRR6325531.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325553,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325553/bwa_mem_alignments.sam,THREADS=48 --job-name=553_c2 --output=out/SRR6325553.out --error=err/SRR6325553.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325542,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325542/bwa_mem_alignments.sam,THREADS=48 --job-name=542_c2 --output=out/SRR6325542.out --error=err/SRR6325542.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325540,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325540/bwa_mem_alignments.sam,THREADS=48 --job-name=540_c2 --output=out/SRR6325540.out --error=err/SRR6325540.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325556,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325556/bwa_mem_alignments.sam,THREADS=48 --job-name=556_c2 --output=out/SRR6325556.out --error=err/SRR6325556.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325555,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325555/bwa_mem_alignments.sam,THREADS=48 --job-name=555_c2 --output=out/SRR6325555.out --error=err/SRR6325555.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325546,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325546/bwa_mem_alignments.sam,THREADS=48 --job-name=546_c2 --output=out/SRR6325546.out --error=err/SRR6325546.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325532,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325532/bwa_mem_alignments.sam,THREADS=48 --job-name=532_c2 --output=out/SRR6325532.out --error=err/SRR6325532.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325558,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325558/bwa_mem_alignments.sam,THREADS=48 --job-name=558_c2 --output=out/SRR6325558.out --error=err/SRR6325558.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325554,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325554/bwa_mem_alignments.sam,THREADS=48 --job-name=554_c2 --output=out/SRR6325554.out --error=err/SRR6325554.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325541,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325541/bwa_mem_alignments.sam,THREADS=48 --job-name=541_c2 --output=out/SRR6325541.out --error=err/SRR6325541.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325552,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325552/bwa_mem_alignments.sam,THREADS=48 --job-name=552_c2 --output=out/SRR6325552.out --error=err/SRR6325552.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325529,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325529/bwa_mem_alignments.sam,THREADS=48 --job-name=529_c2 --output=out/SRR6325529.out --error=err/SRR6325529.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325557,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325557/bwa_mem_alignments.sam,THREADS=48 --job-name=557_c2 --output=out/SRR6325557.out --error=err/SRR6325557.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325547,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325547/bwa_mem_alignments.sam,THREADS=48 --job-name=547_c2 --output=out/SRR6325547.out --error=err/SRR6325547.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325548,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325548/bwa_mem_alignments.sam,THREADS=48 --job-name=548_c2 --output=out/SRR6325548.out --error=err/SRR6325548.err ~/bio-scripts/DEBKS/launch_sort.sh
sbatch --export=ALL,TARGET=/g100_scratch/userexternal/dgambitt/sorted_indexed/RTT/HSA/PRJNA419983/SRR6325535,INPUT=/g100_scratch/userexternal/dgambitt/bwa/RTT/HSA/PRJNA419983/SRR6325535/bwa_mem_alignments.sam,THREADS=48 --job-name=535_c2 --output=out/SRR6325535.out --error=err/SRR6325535.err ~/bio-scripts/DEBKS/launch_sort.sh
