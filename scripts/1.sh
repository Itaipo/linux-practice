#!bin/bash
#
#The script gets process and treats it according to its num of instances
#
if [ $# -gt 0 ]
	then
		inst_num=$(pgrep -c "$1")
		if [ $inst_num -eq 0 ]
		then
			echo  "$1 isn't running"
		elif [ $inst_num -ge 1 ] && [ $inst_num -le 10 ]
		then
			echo "$1 is running $inst_num times"
		else
			read -p "$1 is running more then 10 times, terminate? [y/n] " ans
			if [ "$ans" = "y" ]
			then 
				pkill "$1"
			else
				echo "$1 seems funny, please look into it"
			fi
		fi
	else
		echo "no process sent"
fi
