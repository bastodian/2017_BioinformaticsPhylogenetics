#!/bin/bash

# uncompress all read files
gunzip *gz

# Combine all fastq files
cat *right.fq > Sp_COMBINED_right.fq
cat *left.fq > Sp_COMBINED_left.fq

# Assemble combined data using Trinity 
Trinity --seqType fq --left Sp_COMBINED_left.fq --right Sp_COMBINED_right.fq --CPU 4 --max_memory 10G --trimmomatic --no_bowtie

# change into Trinity assembly directory
cd trinity_out_dir

# Build an index for the Reference assembly
bowtie2-build Trinity.fasta Trinity

# Map reads against Trinity assemble
bowtie2 -x Trinity -1 ../Sp_ds.10k.left.fq -2 ../Sp_ds.10k.right.fq | samtools view -Sb - > Trinity.bam

# Process and view alugned reads
samtools sort Trinity.bam Trinity.sorted
samtools index Trinity.sorted.bam
#samtools tview Trinity.sorted.bam Trinity.fasta
