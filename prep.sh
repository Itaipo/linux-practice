#/!bin/bash 
#
#
#
#make log files and fills them with info abaut RAM and CPU usage
#
DATE="$(date +%d%m%Y)"
MY_LOGS="$(whoami)"-$DATE.log
mkdir $MY_LOGS





for i in {1..10}
do 
	touch $MY_LOGS/$DATE-$i.log
done


for a in {1..10..1}; do
	ps -eo pid,comm,%cpu,%mem | awk '{print $3, $4}' | sort -n -k1,1 > $MY_LOGS/$DATE-$a.log
done

