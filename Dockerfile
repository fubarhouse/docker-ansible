FROM ubuntu:16.04
LABEL maintainer="Karl Hepworth"

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       python-software-properties \
       software-properties-common \
       python-pip \
       rsyslog systemd systemd-cron sudo
RUN sed -i 's/^\($ModLoad imklog\)/#\1/' /etc/rsyslog.conf
#ADD etc/rsyslog.d/50-default.conf /etc/rsyslog.d/50-default.conf

# Install Ansible
RUN pip install --upgrade pip
RUN pip install setuptools
RUN pip install ansible

RUN rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

COPY initctl_faker .
RUN chmod +x initctl_faker && rm -fr /sbin/initctl && ln -s /initctl_faker /sbin/initctl

# Install Ansible inventory file
RUN mkdir /etc/ansible
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

# Report version information
RUN python --version
RUN ansible --version