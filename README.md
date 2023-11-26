$$$$$$$$$$$$ LINUX $$$$$$$$$$$$$$$$$$
---->Cat sag.txt

--->tac sag.txt

-->head sag.txt --->>top to bottam by 10 lines

-->head -n 25 sag.txt --->>top to bottom by 25 lines


-->tail  sag.txt --->>bottom to top by 10 lines

-->tail -n 25 sag.txt --->>bottom to top by 25 lines

-->tail +25 sag.txt --->>it reads from 25th line to bottom

-->tail -f sag.txt--->> we can see live log messages by -f option.


+++++Logs files++++++++++++

User --->SBI APP--->SBI logfile contain app execution details,wt kind of requests are comming, who is accesing log files all the details are stored to logfile
			logmessages will generated, if any functionality is not working the logfile is not updated. latest logs are added in the last postion bottom.
			
			
Note:- Tester will say im getting issue in application can u check log files... to devloper. so devloper need to check logfiles
					latest logs are added in the bottom. To read latest log files we use tail command.
					
					
wc-->word count command

	-used to check hw many lines, words, characters are available in the file.
	:wc data.log
	70  372 2707 data.log

grep(global regular expression print)(ctl+f in windows)

-->It is used to find a data/word in the file.

-->grep cmd will process the text line by line it print the line which is matched with given pattern.
										
---> if i want to print the line which contaian "the"									
		
	--->vi sagu.txt
		logmessages will generated, if 
		any functionality is not working 
		the logfile is not updated. latest 
		logs are added in the last postion bottom.
			
		:grep "the" sagu.txt
		o/p:-
		the logfile is not updated. latest 
		logs are added in the last postion bottom.
			
	---> if i want to print the line which contaian "THE"			
			
		:grep -i "THE" sagu.txt      # To ignore case sensitive we use -i in grep command#
		o/p:-
		the logfile is not updated. latest 
		logs are added in the last postion bottom.
			
	---> if i want to print the line which contaian occure "NullPointerException" in sagu.txt
		:grep -i "NullPointerException" sagu.txt


        ---> if i want to print the line which contaian occure "NullPointerException" in all the files in the present working directory.
		:grep -i "NullPointerException" *
			
			
	---> if i want to print the line which contaian occure "NullPointerException" in all the files in the sub directorys also.
		:grep -R "NullPointerException" 
       --->If i want to install grep using below command.
	        sudo yum install grep
	 
  ---->To display subdirectory content using below command.

	:ls -lR


	---->coping 1 file data into another file
 
	:cat t1.txt > t2.txt  or cp t1.txt t2.txt    # but we can not use cp command to copy more than 1 file data into another file

	---->coping more than 1 file data into another file
 
	:cat t1.txt t3.txt > t2.txt

	--->to compare the data in the files
 
	:diff t1.txt t3.txt
-----------------------------------------------
Day -4:::-

Multiple ppl using same operating in the team member.
3 members in the team means we need to give access to exp member and also fresher

read        r         4
write       w         2
execute     x         1

file permission is availabel in 3 types::-

  user:- 
	user permission 
 
	rw- --->read and write permission is there for user
	
  group:- 
	group permission 
	
	r-x --->read and execute permission is there for group
		
  other:-
	other permission 
 
	rwx --->read,write and execute permission is there for others
---------------------------------------------------------------------------------------------------------------	
	rwxrwxrwx-->

         user---->having read write and execution permission.
	 
	 group---->having read write and execution permission.
  
	 other---->having read write and execution permission.
	 
d-w---x--- ---> directory file
	 
	 user---->having only write permission.
	 group---->having only execution permission.
	 other---->No permission.
	 
	 
	 If we are downlaoding any software. which is .exe file when we double click that file it is getting execute.
------------------------------------------------------------------------------------------------------------------------
############# Modify file command #################################################

-->using chmod command to change the permission.

-->user::-

Add execute permission for user.

	:chmod u+x sagu.txt
	
Remove execute permission for user.

   	:chmod u-x sagu.txt

Group::--

	adding all the user into the group and give the permisions to the group.
	
Add execute permission for group.

	:chmod g+x sagu.txt
	
Remove execute permission for group.

       :chmod g-x sagu.txt
   
We can Add execute and write permission  for group.
	
	:chmod g+wx sagu.txt

We can remove execute and write permission  for group.
	:chmod g-wx sagu.txt
	
	
---> numeric permision given to the file.

	chmod 777 sagu.txt  ---->rwxrwxrwx
	
	chmod 7 sagu.txt   ---> ------rwx single 7 represent others permission
	
	chmod 77 sagu.txt   ---> ---rwxrwx s77 represent group and others permission
	

--->Every Linux machine will have root user(super user)
	if we need to install any software in the linux u need to be root user. when ever u create linux machine it will contain ec2-user or ubuntu user and also root user.
	when ever you are root u have to do everything in the machine. it acts as admitration access.
	
--->Cerate a user in linux.

	sudo useradd sagusam  --> to create user.
	id username  --> to vaerfy username
		uid=1001(sagusam) gid=1001(sagusam) groups=1001(sagusam)
		when we create user uid and also group is created.
		
	sudo userdel sagarsam--> To delete the user.
		
	:ls -l
		ec2-user
		sagarsam
		before only ec2-user home directory is available .now sagarsam home directory user is also avilable.
		
		
--->Cerate a group in linux.
	
	:sudo groupadd devops  --> to create group.
	
	:sudo usermod -aG devops(group name) sam(user name) ---> add the user to the group.
	
	:sudo gpasswd -d sam(user name) devops(group name)  ---> Remove the user to the group.
	
	:sudo groupdel devops(group name) -->delete group.
	
	
	configure useraccount details in sudoers file.
	:sudo visudo
		nexus ALL=(ALL)NOPASSWD: ALL
	
	:cat /etc/group ---->to check how many groups are there in the machine.
	
	:cat /etc/passwd ---->to check how many user are there in the machine.
	
	To get last 5 user account
		tail -5 /etc/passwd
		
	To get last 5 group
		tail -5 /etc/group
		
	print user who are belongs to particular group.
	:sudo lid -g <group-name>
	
	
---->>change the owner of thr file using chown

	:sudo adduser sagar
 
	:sudo passwd sagar
 
		madhu@1.2.3

	:sudo chown sagar sam.txt
	
	
	
---->change the group of thr file using chown

	:sudo chown :grouup name <file name>
	
	:sudo chown :sagar sam.txt
	
	
--->working with locate and find command

	locate and find command is used to serach file in linux os.
	
	locate *.txt --> it will print .txt file in the directory.
	
	locate -c *.txt --> it will print count of .txt file in the directory.
	
	locate sam.txt --> give the file path/location
		
  		/home/ubuntu/sam.txt
		
	locate will store the name in local db i.e locate db. When we execute locate command it will search in locate db (it wont search n actual file).perfomance wise locate wil be faster.
	
==>Find
    	find command will search in actual file linux system. it provide advanced searching techniques.
	it support search by file, folder, name, creation date, modified date, owner and permission.
	
	:sudo find /home - name sam.txt
			
   		/home/ubuntu/sam.txt
			
			
	:sudo find /home -type f -empty -->to find empty file in the home dir.
	
	::sudo find /home -type d -empty --> to find empty directories in the home dir.perfomance wise find wil be slower.
	
	---->man command to get documentation of any command we use man.
	
 		ex:ping
	
===============================================================================================================================
#################
IMP COMANDS
##################

--> ifconfig = ifconfig is use to check the ip address of the machine.

-->wget = wget is uded to download any application based on the URL.

--> curl = curl is used to send HTTP request to url.
	curl google.com

--> ping is used to check the n/w conectivity.

====================================================================================================================================

--> How to deploy static website in Linux machine.

	:sudo apt update.
	
	:sudo apt install apache2
	
	;sudo service start apache2
	
	:sudo service status apache2
	
--> we can change the default webpage of the webserver by below command.

	:cd /var/www/html/
	
	:sudo vim index.html
		<h1>WELCOME TO MADHUSAGAR WORLD......!!!!!!<h1>
		
	:http://3.110.50.95/:80
			
		WELCOME TO MADHUSAGAR WORLD......!!!!!!
		
---> To remove apache2

	:sudo apt remove apache2

 Package manager:::---

	It is a tool that allows user to install, remove, upgrade softwares on an linux operating system.

		apt,yum, rpm,deb,choclate etc.
		

===========================================================================================================

                                                        #############################
                                                               SHELL SCRIPTING
                                                         #############################
													
LINUX ARCHITECTURE::--

User -----> shell --------->kernel ------------>Hardware

What is SHELL??

	Shell is responsible for reading commands given by user.
	
	shell will verify the cmd and will give instruction to the kernael to process that command.
	
	If command is invalid shell will give error.
	
	Kernal will execute our command with system hardware components.
	
	Shell acts as mediater b/w User and Kernal.
	
What is Scripting???

	Scripting means set of commands mentioned in a file for execution.
	
	Scripting is used to automate our routine work.
	
	For EX::-
	
	:date, pwd, cal, ls -l,whoami.
	
-->Types of shell::--

 1. bourne shell 
 2. bash shell      --> most commanly used shell/default shell  -->echo $SHELL

 3. korn shell
 
 4. Cshell 
 
 5. Tshell

 6. Zshell
 
 
 To check the shells in linux machine
 
	:cat /etc/shells

 
 -----------------------------------------------------------------------------------------------------------------
 What is sha-bang in shell script?

	sha-bang is used to specify which shell used to execute the script.
	
	syntax :
	#!/bin/bash
 ----------------------------------------------------------------------------------------
 Day-2::-

components of scripting language.

1.variables

2.control statement

3.case statements

4.Loops

5.Functions

6.No datatyps--	     In shell-scriptying every valu is treated as text or string.
	
1.variables::-

	Variables are containers to store the value.variables are key-value pairs.
	
		Two types::-
  
		1.environment or system variables.
  
			variables which are already defined and using by our s/m.(predefined variables)
			
			EX::-
				: echo $USER
				: echo $SHELL
				
		2. user defined variables
  
			Based on our requirements we can define  our own variables thos are called as user defined.
			
				EX::-
    
				name=sagar
				age=31
				
				
	We should not use special symbole in variables.
	
	variable name should not start with digit.

	Note: It is recomended to use upper cases charecters for variables.
	
	--> readonly variable::-
 
			No one can change the variable value once it created we use below cmd.
				
    				readonly name=sagar.
				
	-->command line arguments::-
 
		The arguments which will pass to the script file at the time of execution.
		
		cmd args are used to supply the values dynamicallyto the script file.
		
	ex::-
		$ sh demo.sh sagar-devops bang
		
		--> We can access cmd args in script file as below.
		
			$# -no of arguments.
   
			$0 -name of the script file.
   
			$1 -first cmd args
   
			$2 -second cmd args
			.
			.
			$* - all cmd args
   
   ------------------------------------------------------------------------------
   <<COMMENT  
			----------------------------		
		COMMENT
		
		Ex::-
		echo $#
  
		echo $0
  
		<<COMMENT 
  
		echo $1	
  
		echo $2	
  
		COMMENT
		
		
		
sleep:::-
	-->To hold/stop the execution for some seconds we can use below cmd
		
		vi cmdargs.sh
			#!/bin/bash
			
			echo $#
   
			echo $0
   
			sleep 30s
   
			echo $1
   
			echo $2
			
			O/p::-  :sh cmdline.sh sagar 31
		
			2
   
			cmdline.sh
   
			sagar
   
			31
   
			Sagar and 31 will print after 30 seconds.
			
==============================================================================================================================================================================

#############Conditional statement##########################

if condition

then

	staetment
 
else


	staetment
	
---------------------------------------
if condition


then

	staetment
elif


then

	staetment
 
else

	staetment
 

fi--> closing the loop.

--------------------------------------

#####################WORKING WITH LOOPS###################
 
 -->Loops are used to execute multiple times.
 
		Condition will satisfy it will execute the loop.
 
	2 types::--
		1.Range based loop.(for loop)
  
		2.Conditional based loop.(while loop)
		
------------------------------------------------------
Task using script:::--

	We will divede big task into smaller task. so function concept came into picture.
	
	################ Function ###################
	
	->The big task can be divided into smaller task.
 
	->Function is used to perform an action.
 
	->Using function we can divide our task logically.
 
	->Function are reusable.
	
	Syntax::-
	
	function functionName(){
 
		//commands to execute
	}
 -----------------------------------------------------------
 df -h -->Is used to chek the disk utilization of each file s/m in our organisation.
   1              2     3    4    5     6
Filesystem      Size  Used Avail Use% Mounted on
devtmpfs        4.0M     0  4.0M   0% /dev
tmpfs           475M     0  475M   0% /dev/shm
tmpfs           190M  2.9M  188M   2% /run
/dev/xvda1      8.0G  1.5G  6.5G  19% /
tmpfs           475M     0  475M   0% /tmp
/dev/xvda128     10M  1.3M  8.7M  13% /boot/efi
tmpfs            95M     0   95M   0% /run/user/1000


-->if i want to print only use% coloumn using awk command
:df -h | awk '{print $5}'
	Use%
 0%
 0%
 2%
 19%
 0%
 13%
 0%
 
-->if i want to print any line using grep command

	:df -h | grep /dev/xvda1
	
		It will print the given pattern present in the line.
		
		/dev/xvda1      8.0G  1.5G  6.5G  19% /
		/dev/xvda128     10M  1.3M  8.7M  13% /boot/efi
		
-->if i want to print only 5th colounm data(how much is used) in this pattern awk command is used

	:df -h | grep /dev/xvda1 |awk '{print $5}'
		19%
		13%
		
-->if we want to remove the dollar symbol in above o/p

: df -h |grep /dev/xvda1 |awk '{print $5}'|cut -d '%' -f1
	19
	13
 -------------------------------------------------------------------
 -->du-->disk usage
   du -ah -->a- it list the size of all file or dir of the given path
			 h-	it prints size of output in human readdable format.
   du -ah /tmp
   
   
   
   sort::-
   
   It is used to arrange the record in the particular order.
	du -ah|sort -hr
	
   
   cmd line argument::-
   
		echo $# Total number of parameters
		echo $0 name of the script
		echo $1 1st arg
		echo $2
		echo $3
		echo $@ Complete list of argument 
		echo $$ Process id of the script
		echo $? Exit code of the script /exit status of previous command.
  -------------------------------------------------------------------
  ---> Cleanup old loggs on basis of old logss..

	==>Find
    find command will search in actual file linux system. it provide advanced searching techniques.
	it support search by file, folder, name, creation date, modified date, owner and permission.

	==>Mtime
			when was the last time the content of the file were modifide.if new contents were added, deleted or re[laced in a file,the modified timestramp is changed.
			-mtime +30 => get the files greater than 30 days.
			
