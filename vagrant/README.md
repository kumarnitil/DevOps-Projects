![alt text](https://github.com/kumarnitil/DevOps-Projects/blob/46b01bf8722794b824d34102c3bc05c152ec6810/Vagrant-Architechture.JPG)


* Vagrant is a VM Automation Tool
* With Vagrant there are no OS Installations. We install VM using Images called Vagrant boxes which are available in Vagrant Cloud
* Any configuration of the VM we are going to manage through a file called as Vagrant File.
* Vagrant commands are also there to manage the VMs
* All the information related to the VM is stored in the Vagrant File
* Vagrant up reads this information from this file
* When vagrant up command is run then it looks for the vagrant image on your local machine
* If the image is not found locally then it goes to the vagrant cloud for the same.
* The vagrant contacts the Hypervisor
* Oracle Virtual Box is the default Hypervisor
* Thus it contacts the Hypervisor and gives the information to create the VM and the VM is created.
* Vagrant usage needs Virtualization Technology enabled in BIOS, Vagrant tool to be installed, A hypervisor and a CLI Tool like GIT BASH
* A vargant file is created using vagrant init "vagrant Image Name"
* From the same directory now run the vagrant up command
* The first time when we run the vagrant up it then downloads the BOX which is also another name for image from the vagrant cloud and hence takes time.
* vagrant ssh from the same directory to connect to the server
* vagrant halt will power off the vm
* Whatever commands you are running make sure you are in the right directory
* vagrant reload to reboot the vm
* vagrant destroy to delete the vm
*     1  ssh kumarnitil@192.168.1.43
    2  ssh kumarnitil@192.168.1.43
    3  ssh kumarnitilubuntu@192.168.1.44
    4  pwd
    5  mkdir /d/vagrant-vms
    6  cd /d/vagrant-vms/
    7  ls
    8  mkdir centos
    9  mkdir ubuntu
   10  lsa
   11  ls
   12  cd centos/
   13  vagrant init eurolinux-vagrant/centos-stream-9
   14  ls
   15  Cat Vagrantfile
   16  vagrant up
   17  vagrant ssh
   18  vagrant box list
   19  vagrant status
   20  vagrant halt
   21  vagrant status
   22  vagrant up
   23  vagrant reload
   24  vagrant destroy
   25  vegrant up
   26  vagrant up
   27  vagrant destroy
   28  cd ..
   29  ls
   30  cd ub
   31  cd ubuntu/
   32  vagrant init ubuntu/jammy64
   33  vagrant up
   34  vagrant ssh
   35  vagrant halt
   36  vagrant global-status
   37  history

