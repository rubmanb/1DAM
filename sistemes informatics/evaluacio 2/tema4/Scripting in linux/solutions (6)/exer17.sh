#!/bin/bash

function myfunct {

	ls -l $1

}

read -p "Tell me that directory which you want to check" direc
myfunct $direc
exit 0
