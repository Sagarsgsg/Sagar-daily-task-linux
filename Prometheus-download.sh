#!/bin/bash
			echo "download the software prometheues"
			if[[-e /home/ubuntu/prometheues 2.4.4.0]]
			then
				echo "file is already exist no need to install"
				tar -zxvf  /home/ubuntu/prometheues 2.4.4.0
			else
				echo "file is not exist need to install"
				wget https://prometheues 2.4.4.0
				tar -zxvf  /home/ubuntu/prometheues 2.4.4.0
				
			fi
