cat subdomain/* | sort -u | uniq | grep -v "^#" | grep -v "/" | grep -v " " | grep -v "\!" > subdomain.txt

