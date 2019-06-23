FROM ubuntu:14.10
MAINTAINER Karl Hepworth

# Convert sources to legacy.
RUN sed -i.bak -r 's/(archive|security).ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       make git curl wget libssl-dev libffi-dev \
       rsyslog sudo build-essential gcc rsync openssh-server openssl \
       curl wget apt-transport-https
RUN sed -i 's/^\($ModLoad imklog\)/#\1/' /etc/rsyslog.conf
#ADD etc/rsyslog.d/50-default.conf /etc/rsyslog.d/50-default.conf

# Setup Python.
RUN apt-get install -y python-openssl software-properties-common python-software-properties
RUN apt-get install -y python2.7 python-pip

RUN pip install setuptools
RUN pip install pyopenssl==0.13.1 pyasn1 ndg-httpsclient

# Install Ansible
RUN pip install --upgrade pip
RUN pip install virtualenv virtualenvwrapper
RUN pip install ansible ansible-lint

# Install Ansible inventory file
RUN mkdir /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

# Upgrade legacy Python
RUN add-apt-repository ppa:fkrull/deadsnakes-python2.7
RUN apt-get update
RUN apt-get install -y --force-yes python2.7

RUN rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

COPY initctl_faker .
RUN chmod +x initctl_faker && rm -fr /sbin/initctl && ln -s /initctl_faker /sbin/initctl

# Report some information
RUN python --version
RUN ansible --version
RUN ansible-lint --version