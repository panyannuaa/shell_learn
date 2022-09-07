#!/bin/bash

if [! -n "$1"]; then
        log_name=result.txt
else
        log_name = $1
fi
if [! -e "$log_name"] ; then
        touch $log_name
fi

curtime = `date`

echo "$curtime" | tee -a $log_name
diskuage= `du`
echo "$diskusage" | tee -a $log_name
path= `env | grep PATH`
echo "$path" | tee -a $log_name
las10=`tail -n 10 /var/log/syslog"
echo “$las10" | tee -a $log_name

