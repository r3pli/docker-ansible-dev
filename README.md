# Docker ansible dev

This repository contains a Dockerfile for building an Ansible docker image. The docker image can be used for Ansible
playbook and role development.

## What's inside

* ansible (2.5.5)
* ansible-lint
* molecule
* ara

## Usage

The default entrypoint is 'ansible-playbook' to use this image with docker run execute the following:

```console
docker run --rm -it -v $(pwd):/ansible r3pli/ansible-dev playbook.yml
```

To use ansible-lint run:

```console
docker run --entrypoint ansible-lint --rm -it -v $(pwd):/ansible r3pli/ansible-dev playbook.yml
```

To use molecule run:

```console
docker run --entrypoint molecule --rm -it -v $(pwd):/ansible r3pli/ansible-dev test [--scenario-name role-xyz]
```

## Installed python packages

* python-dev
* py-boto
* py-dateutil
* py-httplib2
* py-jinja2
* py-paramiko
* py-pip
* py-yaml
* python-keyczar
* docker-py
* redis

## License

This project is licensed under the GNU General Public License Version 2 - see the [LICENSE](LICENSE) file for details

## Author Information

* Fabian (r3pli)
