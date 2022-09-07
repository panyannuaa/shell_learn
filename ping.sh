#!/bin/bash

for((i=1; i<=14; i++))
do
	addr=192.168.41.$i
	ping $addr -c 2 | grep 'loss' | awk '{print $6}' | awk -F% -v var=$addr '{ if($1==0) {printf("%s is pingable\n", var)} else{printf("%s is not pingable\n", var)}}'
done
