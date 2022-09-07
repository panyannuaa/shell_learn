#!/bin/bash

function log() {
	cur_time=`date`
	#echo $#
	#echo $@
	#echo $*
	#echo  -n $cur_time;echo -n "  ";echo $@
	echo -n $cur_time;echo -n "  ";echo $*

}


#log "log1" "log2" 
#log "test log1 log2" 

#echo "$@"
#echo "$*"

#ls $*

#ls "$*"
#ls $@
ls "$@"
