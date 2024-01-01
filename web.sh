cat webdiscovery/* | sort -u | uniq | grep -v "^#" > webdiscovery1.txt

# remove starting / 
sed 's#^/\(.*\)#\1#' webdiscovery1.txt > webdiscovery2.txt

# remove everything after ?
sed 's/\?.*//' webdiscovery2.txt> webdiscovery3.txt

# remove everything after #
sed 's/#.*//' webdiscovery3.txt > webdiscovery4.txt

# sort and clean unique
cat webdiscovery4.txt | sort -u | uniq > webdiscovery.all.txt

# create a directory file
awk -F'/' '{print $1}' webdiscovery.all.txt > webdiscovery.dir.tmp.txt
cat webdiscovery.dir.tmp.txt | sort -u | uniq > webdiscovery.dir.txt

# create a filename file
awk -F'/' '{val = $NF; if (val ~ /\./) print val}' webdiscovery.all.txt > webdiscovery.file.tmp.txt
cat webdiscovery.file.tmp.txt | sort -u | uniq > webdiscovery.file.txt


# clean tmp files
rm webdiscovery1.txt
rm webdiscovery2.txt
rm webdiscovery3.txt
rm webdiscovery4.txt
rm webdiscovery.dir.tmp.txt
rm webdiscovery.file.tmp.txt
