#!/bin/bash
if test $# -eq 3
then
	Res=$(( ($1+$2)/$3 ))
	echo "Result $Res"
else
	echo "Numbers of parameters is 3"
fi

exit 0
