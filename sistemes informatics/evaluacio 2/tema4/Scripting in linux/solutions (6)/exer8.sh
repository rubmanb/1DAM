#!/bin/bash
if [[ $# -eq 1 ]]
then 
 	for i in `seq 1 10`
	do
		echo "$i x &1" ="$(( $i*$1 ))
	done
	
else 
	echo "Give 1 number"
fi
exit 0
