# compile the files by seqkit
cat *.fas > 20200808.fasta # taxus_name.fas files (e.g. Cryptomeria.fas) are stacked into one fasta file
seqkit grep -nrip "matK" *.fas > 20200808matK.fasta # matK sequence was extracted from the stacked fasta file
seqkit grep -nrip "rbcL" *.fas > 20200808rbcL.fasta # rbcL sequence was extracted from the stacked fasta file
