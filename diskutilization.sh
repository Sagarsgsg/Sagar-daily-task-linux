#!/bin/bash
	echo "To check disk usage in linux system"
	disk_size='df -f |grep  /dev/xvda1 |awk '{print $5}'|cut -d '%' -f1'
	echo "$disk_size% of disk is filled"
	if [ $disk_size -gt 80 ];
	then
		echo "disk is utilized more than 80 percentage,expand disk or delete some files"
	else
		echo "enough disk is available"
	fi
