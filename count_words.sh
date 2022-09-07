#!/bin/bash
max=`head -1 6.txt | wc -w`
for((i=1;i<=max;i++))
do
	awk -v var=$i '{print $var}' 6.txt
done
