FROM alpine:latest

ENV ANSIBLE_VERSION 2.5.5

RUN apk --update add --virtual build-dependencies gcc musl-dev libffi-dev openssl-dev python-dev
RUN apk update && apk upgrade
RUN apk add --no-cache bash curl tar openssh-client sshpass git python py-boto py-dateutil py-httplib2 py-jinja2 py-paramiko py-pip py-yaml ca-certificates
RUN pip install --upgrade pip && pip install python-keyczar docker-py redis ansible-lint
RUN pip install --upgrade --user setuptools && pip install --user molecule 
RUN pip install ansible==${ANSIBLE_VERSION}
RUN apk del build-dependencies && rm -rf /var/cache/apk/*

WORKDIR /ansible

ENTRYPOINT ["ansible-playbook"]
