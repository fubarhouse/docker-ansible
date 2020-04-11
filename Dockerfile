FROM ubuntu:20.04
MAINTAINER Karl Hepworth

# Install dependencies.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       python3-pip python-setuptools software-properties-common \
       rsyslog systemd systemd-cron sudo

# Install Ansible
RUN pip3 install urllib3 pyOpenSSL ndg-httpsclient pyasn1 ansible ansible-lint cryptography

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       ansible

RUN rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/doc && \
    rm -rf /usr/share/man && \
    apt-get clean

RUN sed -i 's/^\($ModLoad imklog\)/#\1/' /etc/rsyslog.conf
#ADD etc/rsyslog.d/50-default.conf /etc/rsyslog.d/50-default.conf

# Install Ansible inventory file
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts

# Report some information
RUN python3 --version
RUN ansible --version
RUN ansible-lint --version