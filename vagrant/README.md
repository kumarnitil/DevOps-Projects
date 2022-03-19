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
