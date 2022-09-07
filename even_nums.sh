#!/bin/bash

for((i=0;i<=100;i++))
do
	if [ $[$i%2] -eq 1 ]; then
		arr[$[$[$i-1]/2]]=$i
	fi
done
echo ${arr[*]}
