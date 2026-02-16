# compile the files by seqkit

cat *.fas > 20208080.fasta
seqkit grep -nrip "matK" *.fas > 20200808matK.fasta
seqkit grep -nrip "rbcL" *.fas > 20200808rbcL.fasta
