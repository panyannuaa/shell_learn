#!/bin/bash

sum=0
for n in `ls -l . | awk '{print $5}'`;do
	((sum+=n))

done
echo $sum
