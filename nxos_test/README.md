# NX-OSv on Windows Vagrant 
"""

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
"""

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
Give examples
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
