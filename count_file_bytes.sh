#!/bin/bash

ls -l | awk '{if($5=4096) print $9}'

ls -l | awk 'BEGIN{size=0;} {size=size+$5;} END{print "size is " size}'

ls -l | awk 'BEGIN{size=0;} {if($5!=4096) {size=size+$5;}} END{print "size is " size}'

ls -l | awk 'BEGIN{size=0;} {if($5!=4096) {size=size+$5;} else {print $9}} END{print "size is " size}'
