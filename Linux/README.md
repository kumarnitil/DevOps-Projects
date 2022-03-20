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


