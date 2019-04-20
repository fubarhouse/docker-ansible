FROM fedora:30
MAINTAINER Karl Hepworth
ENV container=docker

# Upstream fix for dnf segfaulting.
RUN echo 'zchunk=False' >> /etc/dnf/dnf.conf && \
    dnf update -y librepo && \
    sed -i 's/^zchunk=False$//' /etc/dnf/dnf.conf

# Update and enable systemd.
RUN dnf -y update \
    && dnf -y install systemd ansible && dnf clean all && \
    (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
    rm -f /lib/systemd/system/multi-user.target.wants/*;\
    rm -f /etc/systemd/system/*.wants/*;\
    rm -f /lib/systemd/system/local-fs.target.wants/*; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
    rm -f /lib/systemd/system/basic.target.wants/*;\
    rm -f /lib/systemd/system/anaconda.target.wants/*;

# Install Ansible and other requirements.
RUN dnf -y install \
    redhat-rpm-config \
    make \
    python-devel \
    python-pip \
    openssl-devel \
    which \
    unzip \
    tar \
    gcc \
    libffi-devel \
    glibc \
    glibc-devel \
    findutils \
    && dnf clean all

# Install Ansible
RUN pip install ansible

# Install Ansible inventory file.
RUN echo -e '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]
CMD ["/usr/sbin/init"]

# Report some information
RUN python --version
RUN ansible --version