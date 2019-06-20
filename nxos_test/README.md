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

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

```
Vagrant 
Putty (or socat on macOS)
NX-OSv Vagrant Box file (using nxosv-final.7.0.3.I5.1.box)
```

### Installing
Step1: Setup directory and Vagrant file
```
mkdir ...
vagrant init --minimal
```
Step2: Add the NX-OSv box file to Vagrant 
```
vagrant box add simple-name /path/to/box/file
vagrant box list  
```
Step3: Clone this repository and cd to it

Step4: Run the Vagrantfile (this will take awhile depending on your system)
```
vagrant up
```

End with an example of getting some data out of the system or using it for a little demo



## Deployment

Add additional notes about how to deploy this on a live system


## Authors


