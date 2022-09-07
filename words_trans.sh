#!/bin/bash
max=`head -1 nowcoder.txt | wc -w`
for((i=1;i<=max;i++))
do
        awk -v var=$i '{print $var}' nowcoder.txt 
done

