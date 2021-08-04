#!/bin/bash
for i in $*
do 
	let rest=$i%2
	if [ $rest -eq 0 ]
	then 
		echo "$i even"
	else
		echo "$i odd"
	fi
done 
exit 0
