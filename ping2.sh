#!/bin/bash

for((i=1; i<=10; i++))
do
        addr=192.168.41.$i
        ping $addr -c 2 -W 1 | grep 'loss' | awk '{print $6}' | awk -F% -v a=$addr '{ if($1==0) {printf("%s is pingable", a)} else{printf("%s is not pingable", a)}}'
done
