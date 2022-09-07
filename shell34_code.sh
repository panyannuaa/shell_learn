#!/bin/bash

sum_vsz=0
for i in `awk '{print $5}' shell34.txt`
do
	((sum_vsz+=i))
done	
sum_vsz=`echo "scale=1;${sum_vsz}/1024"|bc`

sum_rss=0
for i in `awk '{print $6}' shell34.txt`
do
	((sum_rss+=i))
done	
sum_rss=`echo "scale=1;${sum_rss}/1024"|bc`

echo "MEM TOTAL"
echo "VSZ_SUM:${sum_vsz}M,RSS_SUM:${sum_rss}M"
