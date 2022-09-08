#!/bin/bash
read -p "subneti daxil edin:" subnet
for i in {1..255}
do
	ping -c 2 $subnet.$i >> /dev/null
	if [ $? -eq 0 ];then
		echo "$subnet.$i is active"
	elif [ $? -eq 1 ];then
		echo "$subnet.$i is inactive" 
	fi
done
