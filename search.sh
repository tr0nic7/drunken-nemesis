#!/bin/bash

dir=$1
query=$2


for i in $(find $2 -type f); do
	if [ $(echo $i | cut -d'.' -f2) = "pdf" ]; then
		pdftotext -q $i - | grep -n $query
	else
		cat $i | grep -n $query
	fi
done
