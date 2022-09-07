awk -F: '
{ 
	for(i=NF;i>1;i--) {
		printf("%s:",$i) 
	}
	print $i

}' shell17.txt
