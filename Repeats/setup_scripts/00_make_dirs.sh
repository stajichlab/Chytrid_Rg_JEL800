pushd runs
for file in ../wgbs_genomes/*.fasta; 
do 
 m=$(basename $file .fasta | awk -F\. '{print $1}'); 
 b=$(basename $file .fasta)
 #echo $m; 
 if [ ! -d $m ]; then
   echo $m
   mkdir $m 
 fi
 if [ ! -e $m/$b ]; then
  echo $m/$b
  ln -s $(realpath $file) $m/$b.fa
 fi
done

