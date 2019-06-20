# NX-OSv on Windows Vagrant 
" " "

As a network development engineer, I would like to have a Vagrantfile that I can use on my laptop or in a Continuous Integration setting, so that I can do integration testing for Ansible playbooks in the NX-OS product family.

Acceptance criteria:

A partner VM running Linux with Ansible (and eventually Jenkins) should be contained in the topology and should be able to reach the management port of the NX-OSv instance.
Ideally the NX-OSv image would come from a public repository but if that isn't possible due to access permissions, then posting it to  private Artifactory instance would be the next option.

Create golden image that has the following installed and configured on widely used vagrant base box:
Ansible
Docker
Molecule
All Dependencies required for Ansible Module Development/Testing
https://docs.ansible.com/ansible/latest/dev_guide/developing_modules_general.html
virtualenv & virtualenvwrapper installed and configured to use python3 by default.
pytest
(Optional) Use packer to create golden image
More to come...

" " "

## Getting Started

The NX-OSv VM is picky about system requirements and WILL NOT boot if you don't meet the memory requirment (8GB minimum). 

This will be a problem for people with exactly 8GB on their personal devices as it will run but you will struggle to do anything else at the same time. 

Eventually I want to try this out on ESXi or someother environment where I can get a lot more resources to use.

### Prerequisites

```
Vagrant 
Oracle Virtualbox 
Putty (or socat on macOS)
NX-OSv Vagrant Box file (using nxosv-final.7.0.3.I5.1.box)
```

### Installing

###### Step1: Add the NX-OSv box file to Vagrant 
```
vagrant box add arbitrary-name C:\path\to\file.box
```

###### Step2: Clone this repository and move to it

###### Step3: Extract the nxosv_config.iso file from the nxosv-final.7.0.3.I5.1.box file to the same repo directory
```
tar -xf C:\...\nxosv-final.7.0.3.I5.1.box nxosv_config.iso
```

###### Step4: Run the Vagrantfile 
  OPTIONAL PRE-Step5: Customize the text file within **nxosv_config.iso** to change initial configuration

```
vagrant up
```

###### Step5: Connect to the named pipe virtual serial port and configure boot file
In putty: 
```
Set connection type to Serial and leave speed at 9600
Serial line will be:  \\.\pipe\COM1 
```
Login to the serial port the default admin credentials
```
User Access Verification
nxosv login: admin
Password:
nxosv#
```

List available files and locate the .bin
```
nxosv# dir

       4096    Jun 20 19:00:20 2019  .rpmstore/
       4096    Jun 20 19:00:48 2019  .swtam/
  757450240    Nov 18 23:21:29 2016  nxos.7.0.3.I5.1.bin    <------ this one
       4096    Jun 20 19:02:39 2019  scripts/
       ...    
```
Set the .bin to be the boot file
```
nxosv# config t
nxosv(config)# boot nxos bootflash:nxos.7.0.3.I5.1.bin
nxosv(config)# show boot
  Current Boot Variables:
  sup-1
  NXOS variable = bootflash:/nxos.7.0.3.I5.1.bin     <------ good to go
  No module boot variable set
```
Save the config
```
 nxosv(config)# copy run start
```

##### SSH
We are now good to SSH to the VM 
```
vagrant ssh

-bash-4.2$ su admin       ---
  Password:
  Cisco NX-OS Software
nxosv#
```
Shut down the VM 
```
vagrant halt -f
```


## Deployment

Add additional notes about how to deploy this on a live system


## Authors


