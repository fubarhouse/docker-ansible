FROM debian:wheezy
MAINTAINER Karl Hepworth

ENV DEBIAN_FRONTEND noninteractive

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends sudo

# Install Ansible via pip.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential libffi-dev libssl-dev python-dev ca-certificates \
       zlib1g-dev libncurses5-dev systemd udev python-setuptools curl wget

RUN wget https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz && \
    tar zxf Python-2.7.15.tgz && \
    cd Python-2.7.15/ && \
    ./configure --prefix=/usr/local && \
    make && \
    sudo make install && \
    cd .. && \
    rm -rf Python-2.7.15

# Installs nodejs
RUN curl -sL http://deb.nodesource.com/setup_6.x | sh - && \
    apt-get install -y nodejs
RUN node --version
RUN npm --version

# Unfortunately, PIP 1.x simply won't do anymore...
RUN curl https://bootstrap.pypa.io/get-pip.py | python;
RUN pip install urllib3 pyOpenSSL ndg-httpsclient pyasn1 cryptography
RUN pip install ansible

# General clean-up
RUN rm -rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

COPY initctl_faker .
RUN chmod +x initctl_faker && rm -fr /sbin/initctl && ln -s /initctl_faker /sbin/initctl

# Install Ansible inventory file
RUN mkdir -p /etc/ansible \
    && echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

# Report some information
RUN python --version
RUN ansible --version