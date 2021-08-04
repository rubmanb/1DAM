#!/bin/bash
for i in $*
do 
	x=$i
	if [ $i -gt 0 ]
	then 
		
		while [ $x -gt 0 ]
		do 
			let x=$x-2
		done
	else
		while [ $x -lt 0 ]
		do 
			let x=$x+2
		done
	fi
	if [ $x -eq 0 ]
	then 
		echo $i even
	else 
		echo $i odd
	fi
done 
exit 0
