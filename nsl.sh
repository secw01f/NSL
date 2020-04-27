#!/bin/bash

if [ $# == 0 ]
then
	echo "nsl"
	echo ""
	echo "Usage"
	echo "./nsl.sh <SearchTerm>"
	echo "all   use \"all\" (without quotes) to list all scripts"
	echo ""
	echo "Example:"
	echo "./nsl.sh smb"
	echo "./nsl.sh all"
fi

if [[ $1 = 'all' ]]
then
	ls /usr/share/nmap/scripts/** | awk 'BEGIN { FS = "[/.]" }{print $6}'
else
	while (( "$#" ))
	do
		ls /usr/share/nmap/scripts/*$1* | awk 'BEGIN { FS = "[/.]" }{print $6}'
		shift
	done
fi
