#!/bin/bash
p=`pwd`
for i in range 1 2 3;do
	awk -v var=$i '{print $var}' nowcoder_mem.txt
	awk -v var2=$p '{print "current path is "var2}'
done
