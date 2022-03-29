![alt text](https://github.com/kumarnitil/DevOps-Projects/blob/25cfcd918a775cc917b925341b170c032010d1a8/Images/LinuxKernel.JPG)
# Linux And Some Commands
* Linux Kernel was open Source and was initially made by Linus Benedict Torvalds who is a Finnish-American software engineer.
* All the basic information of Linux can be found in file attached here.
* RHEL(rpm based) is not open source but is considered as a very stable and secure Operating System and hence for all server based deployment RHEL is preferred.
* AWS Linux distribution is also rpm based.
* Ubuntu is on the other hand open source and is debian based. More tools for experimenting is available in Ubuntu and hence it more suitable for Devops Purpose.

![alt text](https://github.com/kumarnitil/DevOps-Projects/blob/31e954d710b9b4438a1de72ba573a9a5f019ea53/Images/Linux-File-Distribution.JPG)
# File System in Linux
* Home directories represent the home directories for the users. For all the other user apart from root the home directory is /home/username
* User Executable means - commands which can be executed by normal users are stored here.
* System Exectuable - location stores the commands which can be executed by root user.
* /usr/local/bin or /usr/local/sbin - One can create custom command and put in this location
* /etc - contains all the configuration information like Server configuration etc
* /tmp - contains temporary files and there is a chance files can get deleted when you reboot.
* /var - Server Data like if running web server then that data can be found here.

# Some different Linux Commands
* The general format of the command is  (command   options    arguments) - ex -> ls -l /tmp/
* command --help to know all the options since it is not possible to memorize all commands
* cat /etc/os-release - will tell you which OS you are working on\
* sudo -i - switch to root user
* whoami - the user you are
* cat /etc/hostname - to get the host name
* /proc - will contain all the system related information
* uptime is a command which will tell you how long has your system been running
* free -m is a command which will show you the ram size.
* touch not only creates an empty file it also updates files time stamps.
* touch file{1..10}.txt - will create file from file1 to file10.txt
* cp -r dir1 /dir2/ - cp -r is used to copy directories, only cp will not work\
* mv command will move directory as well, adding options is not mandatory
* mv command is also used to rename files and directory
* rm -r to remove a directory and rm -r * will remove everything from your current directory
* mkdir -p - this command will let you create a series of directories inside one another but only mkdir will fail.

# VIM Editor
* Vi stands for Visual. It is a text editor that is an early attempt to a visual text editor.
* Vim stands for Vi IMproved. It is an implementation of the Vi standard with many additions. It is the most commonly used implementation of the standard. Most Linux distributions come with Vim already installed.
* VIM Editor is not there by default in CentoOS and you will have to install it. It will have vi but now vim.
* While I takes you to Insert mode hitting O will also take to insert mode but will take you the next line from where you can make the change.
* anaconda-ks.cfg will have information of all the option you choose while installing the OS and is located in the home directory of root.
* Once in extended mode of the file then hit :se nu - this will display the entire files with line numbers
* dd is not only to delete the lines but it also works as cut paste, yyp is copy paste and ddp is cut paste

# File System
* A file in Linux can be a text file or a binary file. Use the file command to know. file (file-name)
* file pwd when in bin directory would show it is a binary file
* C means it is a character files linked to the character like keyboard is a character- go to directory cd /dev - this is where you find device files
* b means block files - you will find it againsts sda which is our hardisk here.
* l is for link like the shortcuts which we have - like the Desktop shortcuts
  * We will do this when we work on a file location of which is very deep down in the directories
  * to create a link we give ln -s (absolute path of the file) (link Name)
  * to delete the link simply use rm command or we can also use unlink command
* ls -l - display the files sorted in alphabetical order
* ls -lt - displays the files sorted as per the time stamp
* ls -ltr - will reverse the sorted order- which will show latest file at the end
* To change the hostname of your machine you need to change the hostname in  /etc/hostname file and then comeout and run the hostname (updated hostname) command

# GREP
* grep command will help find a keyword in a file or a group of files and will return the line whereever the word occurs in the file and will show file path if multiple hits.
* grep keyword filename - is the format
* grep -i keyword filename - by giving -i we ignore the case senstivity in the keywords
* grep -i firewall < anaconda-ks.cfg here. - < is the input redirection symbol which is included by  default.
* grep -i firewall * - will look for the keyword firewall in all the files in the current directory.
* grep -iR firewall * - When we use -R with that then it will not only look into the files of the current directory but also the files in the directories present in the current directory. Similary this is also a command grep -R SELINUX /etc/*
* grep also has something which is oppossite of search which is also called as reverse search - grep -v which means show everything apart from the keywords mentioned in the command

# less, more, head, tail, cut and awk
* less is a reader command which opens like vi but is only a reader
* In less you can up and down arrow to scroll, use / to search the keyword and use q to quit.
* more is also a reader but shows the file as percentage and also you only use Enter to scroll through the contents
* head by default will show the first 10 lines and -n will make it show what lines you mentioned.
* tail by default will show the last 10 lines and -n will make it show what lines you mentioned.
* How to read the log file dynamically - tail -f will show you the dynamic contents of a file. CTRL + C to quit here. This command is very useful and should be used for 
troubleshooting.
* Logs of the system are located in /var/log. System log file is messages which is located here.
* cat /etc/passwd this file contains all the user information where all the information is segregated by colons and first coloumn is the user name
  * If we have proper separators like colons : then we can use cut command
  * cut -d: -f1 /etc/passwd, cut -d: -f3 /etc/passwd,cut -d: -f4 /etc/passwd - where -d: is the delimeter and f1 is the colon name
  * But if we do not have separators like colon then we have an intelligent search command called as awk
  * awk -F':' '{print $1}' /etc/passwd - here the :F is being used as the delimeter.

# Search and Replace in Files
* Using Vim Editor
  * There are a couple of ways vim editor will help here.
  * vim file name - enter the extension mode using ESC -  :%s/text to search/text to replace  - Now this has a limitation and pay attention to the next few lines. If the same text is occuring at multiple places then it will replace the first occurence of the text and move on the next line. The solution is in the next line
  * vim file name - enter the extension mode using ESC -  %s/text to search/text to replace/g - then this will replace the text globally.
  * One more trick when we want to replace the word with nothing or in short remove the word - :%s/text to remove//g
* The same thing can be done by the sed command
  * sed is particulary useful when replacing in multiple files
  * sed 's/coronavirus/covid19/g' samplefile.txt - will only show the replacement but will not actually replace the file.
  * sed -i 's/coronavirus/covid19/g' samplefile.txt using -i will actually do the replacement.
  * Multiple file replacement can be done using *.txt in the file name
  * sed -i 's/coronavirus//g' samplefile.txt - to remove the word coronavirus from the file.

# Redirections Inputs and Outputs
* Some useful commands before that
  * **uptime** - the time your system has been up.
  * **date** - the current time of your system
  * **free -m** - the current ram available on the system or it can be said it shows the memory utilization.
  * **df -h** this will show the harddisk partitions
* The contents can be written in a files with redirection >, but every time we use >, it will overwrite the pervious content
* The issue can be overcome by using >> for writing into the files.
* ls > /tmp/sysinfo.txt, cat /tmp/sysinfo.txt, uptime >> /tmp/sysinfo.txt
* **echo** is your print command whoes output can again be redirected to a file.
* We have seen how we can redirect output to the screen or to the file but if you do not want to redirect to anywhere you can redirect to /dev/null which is like a black hole in the galaxy. **yum install vim -y > /dev/null**
* /dev/null can also be used delete the contents of a file **cat /dev/null/ > /tmp/file.txt
  * **Redirecting Errors into files**
  * Use 1>> for redirecting standard output which is also present by default
  * Use 2>> for redirecting standard error to the file.
  * Use &>> for redirecting any kind of output to the file  - whether it is an output or an error.
  * /var/log will have the log files of the processes which are running behind the scenes.
  * **wc -l** this commands counts the line number in any file.

# Piping of the commands
* You can use pipe command in any way you please as long as it makes sense
* **ls | wc -l** - This command can count the number of files in a directory.
* **ls | grep host** this will display all the files which start will host in the directory.
* **tail /var/log/messages | grep -i vagrant** - will look for all the last 10 lines having word vagrant in it.
* **free -m | grep Mem** - will display only the output where we have the work Mem
* **ls -l | tail** - last 10 files or directories
* **ls -l | head** will display first 10 files or directories

# find command
* find /the path -name name of the file - **find /etc -name host.txt** the sample path
* The other way of searching is also by using the **locate** command but locate may not be installed by default
* **sudo yum install mlocate -y** will install the locate command and post this install you need to run **updatedb**
* **locate** is not a real time search where as the find is - the locates searches its db which is updated thus it is important to run update db before running the locate command

# Users and Groups
* Every user has a unique ID associated with it which is called as the UID and it is stored in the which is stored in /etc/passwd file
* User passwords are stored in **/etc/shadow** file in the encypted format and also expiry of the user
* root user will have a user id and group id of 0 and shell as /bin/bash where as system user will not have a shell which means cannot be used to login.
* **root:x:0:0:root:/root:/bin/bash** -  A line from the /etc/passwd file
  * First coloumn - Name of the user
  * 2nd - Link to the shadow file
  * 3rd and 4th - UID and GID
  * 4th - COmments
  * 5th - Path to home directory
  * 6th - login Shell
* **/etc/group** will have group information.
* **id** command - **id nitil** will give information about the user nitil
* **last** command will give you a list of the users logged into the system.
* **who** who is the current user
* **lsof -u username** will give you the list of all the files which has been opened by the user.

# User and Groups Modification Commands
* **useradd** command to add a user
* **groupadd** command to add a group
* **usermod** will modify the setting related to a user
  * **groupadd devops** will create a group called devops
  * **useradd ansible** will create a user called as aws - **Note** the primary group here will be aws
  * **usermod -aG devops ansible** will add the user ansible to the secondary group devops since we used Capital **G**
  **usermod -ag devops ansible** will add the user ansible to the primary group devops since we used small **g**
  * We can also add a user to a group by simply modifying the file **/etc/group**
* **passwd** will be used to create a password for the user
* **userdel** will be used to delete a user but simply using **userdel ansible** will delete only the user and not the home directory.
* **userdel -r ansible** will delete the user as well as the home directory.
* **groupdel** will delete a particular group.

# Files Permissions
* **chown** to change the user of the file/directory - **chown nitil text.txt/dir1**
* **chgrp** to change the group of the file or/directory - **chgrp nitil text.txt/dir1**
* **chown/chgrp -R** will change recursively means it will change it for all the file/sub-directories inside the directory.
* **chmod** will modify the permissions of the user/group/other users related to the file or diretory.
* **The execute permission on the directory means you can cd to the directory**
* **chmod format**
  * chmod (u/g/o)(+/-)(r/w/x) filename/directory name.
  * **chmod o-x /opt/devopsdir**
  * **chmod o-r /opt/devopsdir** - removing the read permission for other users.
  * **chmod g+w /opt/devopsdir** - giving write permission for the group.
  * Replace **(u/g/o)(+/-)(r/w/x)** with **(/0/1/2/4/5/6/7)(/0/1/2/4/5/6/7)(/0/1/2/4/5/6/7)** and use the same chmod command.

# SUDO
* **sudo -i** will change the user to superuser
* For any user to execute commands as superuser it needs to be added to the **/etc/sudoers** file.
* You can edit this file using **visudo**
* Add the entry like this - **ansible ALL=(ALL)       NOPASSWD: ALL** which will not only add the user but also not ask for password when changing to ansible user.
* But if there is a syntax error in editing the sudoers file then it will not save and use **e** to go back to editing mode.
* Since that is prone to error you can go to **/etc/sudoers.d/** and create a file there with either the file name or the group name.

# Package Management
* Install any package on your Linux Server using rpm. The rpm packages needs to be downloaded and then installed using red hat package manager.
* **curl** can be used to download any file to the linux machine.
* **curl https://rpmfind.net/linux/centos/7.9.2009/os/x86_64/Packages/httpd-2.4.6-95.el7.centos.x86_64.rpm -o httpd-2.4.6-95.el7.centos.x86_64.rpm** Here the curl command will take the contents of the file and **-o** will redirect the output to the new file.
* **rpm -ivh httpd-2.4.6-95.el7.centos.x86_64.rpm** will install package using the downloaded file.
**-ivh**
  * i is for install
  * v is for verbose
  * h is to print it in human readable format.
* rpm will install the package for you but will not install the related dependencies
* This can be resolved using the package manager which is **yum** which is there for Redhat.
* **rpm --help** will show all the options to you.
* **rpm -qa** will list all the rpms or packages.
* **rpm -e** to erase any package.
* **yum** is always a better option to manage the package since it will not only install the package but also install all the dependencies.
  * yum maintains some files in the directory **/etc/yum.repos.d/**. These files points to repositories on the internet and will download and install the package for you.
* **yum install package**
* **yum upgrade** is going to read all your packages and then upgrade all of them to the latest version.
* **yum remove** to remove a package.








