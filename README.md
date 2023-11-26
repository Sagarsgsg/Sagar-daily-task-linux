$$$$$$$$$$$$ LINUX $$$$$$$$$$$$$$$$$$

---->Cat sag.txt

--->tac sag.txt

-->head sag.txt --->>top to bottam by 10 lines
-->head -n 25 sag.txt --->>top to bottom by 25 lines


-->tail  sag.txt --->>bottom to top by 10 lines
-->tail -n 25 sag.txt --->>bottom to top by 25 lines
-->tail +25 sag.txt --->>it reads from 25th line to bottom
-->tail -f sag.txt--->> we can see live log messages by -f option.

+++++++++++++++++++++++++++++++++++++++++++Logs files+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

User --->SBI APP--->SBI logfile contain app execution details,wt kind of requests are comming, who is accesing log files all the details are stored to logfile
			logmessages will generated, if any functionality is not working the logfile is not updated. latest logs are added in the last postion bottom.
			
			
			Note:- Tester will say im getting issue in application can u check log files... to devloper. so devloper need to check logfiles
					latest logs are added in the bottom. To read latest log files we use tail command.
					
					
wc-->word count command
	-used to check hw many lines, words, characters are available in the file.
	:wc data.log
		70  372 2707 data.log

grep(global regular expression print)(ctl+f in windows)-->It is used to find a data/word in the file.
						       -->grep cmd will process the text line by line it print the line which is matched with given pattern.
										
	---> if i want to print the line which contaian "the"									
		
		-->vi sagu.txt
			logmessages will generated, if 
			any functionality is not working 
			the logfile is not updated. latest 
			logs are added in the last postion bottom.
			
			:grep "the" sagu.txt
				o/p:-
					the logfile is not updated. latest 
			logs are added in the last postion bottom.
			
	---> if i want to print the line which contaian "THE"			
			
			:grep -i "THE" sagu.txt      # To ignore case sensitive we use grep command#
					o/p:-
						the logfile is not updated. latest 
			logs are added in the last postion bottom.
			
	---> if i want to print the line which contaian occure "NullPointerException" in sagu.txt
			:grep -i "NullPointerException" sagu.txt


    ---> if i want to print the line which contaian occure "NullPointerException" in all the files in the present working directory.
			:grep -i "NullPointerException" *
			
			
	---> if i want to print the line which contaian occure "NullPointerException" in all the files in the sub directorys also.
			:grep -R "NullPointerException" 
--->If i want ti install grep using below command.
	sudo yum install grep

---->To display subdirectory content using below command.

	:ls -lR


---->coping 1 file data into another file
	:cat t1.txt > t2.txt  or cp t1.txt t2.txt    # but we can not use cp command to copy more than 1 file data into another file

---->coping more than 1 file data into another file
	:cat t1.txt t3.txt > t2.txt

--->To compare the data in the files
	:diff t1.txt t3.txt
---------------------------------------------------------------------------------------------------------------------------------------------------
Day -4:::-

Multiple ppl using same operating in the team member.
3 members in the team means we need to give access to exp member and also fresher

read     r     4
write    w     2
execute  x     1

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

	chmod u+x sagu.txt
	
Remove execute permission for user.

   chmod u-x sagu.txt

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
		
	locate will store the name in local db i.e locate db. When we execute locate command it will search in locate db (it wont search n actual file) 
	perfomance wise locate wil be faster.
	
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
		
