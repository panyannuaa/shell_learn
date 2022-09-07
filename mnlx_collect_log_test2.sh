#!/bin/bash

if [ ! -n "$1" ]; then
	log_name="log_test.txt"
else
	log_name=$1
fi


if [ ! -e $log_name ]; then
	touch $log_name
fi

time=`date`
echo $time | tee -a $log_name

du=`du -h`
echo $du | tee -a $log_name

#path=`env | grep PATH`
echo $PATH | tee -a $log_name

log='tail -n 10 /var/log/syslog'
echo $log | tee -a $log_name


