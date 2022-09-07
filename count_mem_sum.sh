#!/bin/bash
sum=0
for i in `awk '{print $6}' nowcoder_mem.txt`
do
	((sum+=$i))
done
echo $sum
