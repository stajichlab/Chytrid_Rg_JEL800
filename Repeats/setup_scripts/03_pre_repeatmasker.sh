#!/usr/bin/bash
mkdir -p RepeatMasker
for genome in $(ls runs/*/*.fa | grep -v _nt | grep -v cDNA); 
do 
	name=$(basename $genome)	
	ln -s $(realpath $genome) RepeatMasker/$name; 
done
