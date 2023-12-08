#!/bin/bash
for folder in $(find -type d);
do										#starting thefor loop#
	echo "the folder is $folder"
	if[ -d test ];
	then
			echo"this folder is exist"
			echo "removing the folder"
			rm -rf test
	else
			echo"test folder does not exist"
			
	fi
done 		
