#!/bin/bash
# Use seqkit

refseqs="../refseqs/refs_Hinoki01_pr15pr16.fas"
pr_f="pr15"
pr_r="pr16"

seqkit grep -nrip ${pr_f} *.fasta > test_s.fas
seqkit grep -nrip ${pr_r} *.fasta > test_as.fas
seqkit seq -rpv test_as.fas > test_asrc.fas

cat test_s.fas > wood.fas
cat test_asrc.fas >> wood.fas
cat ${refseqs} wood.fas > CompiledDat_${pr_f}_${pr_r}.fas

rm -f test*.fas
rm -f wood.fas
