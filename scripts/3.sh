#!bin/bash
#
#
#
#
#
if [ $# -eq 2 ]
then
	while read user
	do 
		if getent passwd "$user" &>/dev/null
		then 
			home=$(getent passwd "$user" | awk -F : '{print$6}')
			cp "$2" "$home"
		else
			echo "user was absent on $(date)" >> absent_user.log
		fi
	done < "$1"
else
	echo "The num of arguments expected is 2"
fi#!bin/bash



if [ $# -eq 2 ]
then
	while read user
	do 
		if getent passwd "$user" &>/dev/null
		then 
			home=$(getent passwd "$user" | awk -F : '{print$6}')
			cp "$2" "$home"
		else
			echo "user was absent on $(date)" >> absent_user.log
		fi
	done < "$1"
else
	echo "The num of arguments expected is 2"
fi#!bin/bash



if [ $# -eq 2 ]
then
	while read user
	do 
		if getent passwd "$user" &>/dev/null
		then 
			home=$(getent passwd "$user" | awk -F : '{print$6}')
			cp "$2" "$home"
		else
			echo "user was absent on $(date)" >> absent_user.log
		fi
	done < "$1"
else
	echo "The num of arguments expected is 2"
fi
