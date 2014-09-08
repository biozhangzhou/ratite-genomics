#!/bin/bash

SPEC=$1
cat orig/${SPEC}3kb.trim_1P.fastq.gz orig/${SPEC}_R1_ho_3kb_1P.fastq.gz | seqtk seq -r - | gzip -c - > ./reapr/${SPEC}_jump_1_forREAPR.fastq.gz
cat orig/${SPEC}3kb.trim_2P.fastq.gz orig/${SPEC}_R1_ho_3kb_2P.fastq.gz | seqtk seq -r - | gzip -c - > ./reapr/${SPEC}_jump_2_forREAPR.fastq.gz
seqtk seq -L 125 orig/${SPEC}_R1_ho_220_1P.fastq.gz | gzip -c - > ./reapr/${SPEC}_frag_1_forREAPR.fastq.gz
seqtk seq -L 125 orig/${SPEC}_R1_ho_220_2P.fastq.gz | gzip -c - > ./reapr/${SPEC}_frag_2_forREAPR.fastq.gz
