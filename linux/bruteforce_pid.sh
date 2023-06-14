#!/bin/bash

for i in $(seq 1 50000); do
	path="/proc/${i}/cmdline" 

if test -f  $path; then
	result=`cat $path |tr -d '\0'`
	echo "${i}: $result"
fi
done
