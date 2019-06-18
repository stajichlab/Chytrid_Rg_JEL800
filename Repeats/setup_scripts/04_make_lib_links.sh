#!/usr/bin/bash

for lib in runs/Rhihy1/*/*filtered_Blastclust.fa
do
	r=$(realpath $lib)
	ln -s $r libraries/
done
