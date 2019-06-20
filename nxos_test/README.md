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
Putty (or socat on macOS)
NX-OSv Vagrant Box file (using nxosv-final.7.0.3.I5.1.box)
```

### Installing
Read through all steps before starting as there are optional steps at the bottom (todo).

Step1: Setup directory and Vagrant file
```
mkdir ...
vagrant init --minimal
```

Step2: Add the NX-OSv box file to Vagrant 
```
vagrant box add arbitrary-name C:\path\to\file.box
vagrant box list  
```

Step3: Clone this repository and cd to it

Step4: Extract the nxosv_config.iso file from the nxosv-final.7.0.3.I5.1.box file
```
Using tar (while inside same directory as the Vagrantfile):
  tar -xf C:\...\nxosv-final.7.0.3.I5.1.box nxosv_config.iso
```

Step5: Run the Vagrantfile (this will take awhile depending on your system)
  OPTIONAL PRE-Step5: Customize the text file within nxosv_config.iso file to change the initial configuration

```
vagrant up
```

Step6: SSH into NX-OS and configure the boot file
```
vagrant ssh


```


## Deployment

Add additional notes about how to deploy this on a live system


## Authors


