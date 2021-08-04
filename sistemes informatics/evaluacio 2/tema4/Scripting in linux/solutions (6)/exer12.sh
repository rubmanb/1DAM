#!/bin/bash

if [ $# -eq 1 ]
then 
	if [ -f $1 ]
	then
		echo "It is a file" 
	elif [ -e $1 ]
	then 
		echo "It is a directory"
	
	else
		echo "This name isn't a directory neither file"
	fi
		 
else
	echo "Give an arguments"
fi

exit 0
