#!/bin/bash
lines=0
max=0
for i in `ls .`
do
	if [[ -f $i ]]
	then
		lines=$(wc -l $i|cut -d " " -f1)
		if [[ $lines -gt $max ]]
		then 
			max=$lines
			filemax=$i
		fi
	fi
done
echo "The file with more number of lines is $filemax"
exit 0
