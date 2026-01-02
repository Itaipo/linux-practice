#/!bin/bash

# get a file and gives size
if [ $# -gt 0 ]
then
	if [ -e "$1" ]
	then
		if [ -f "$1" ]
		then
			size=$(ls -l "$1" | awk '{print $5}')
			if [ $size -lt 1024 ]
			then
				echo "$1 is a tiny file!"
			else
				echo "the size of $1 is $size"
			fi
		elif [ -d "$1" ]
		then
			du -hs "$1"
		else
			echo "not a file or dir"
		fi 
	else 
		echo "no file or dir"
		fi	
fi	
