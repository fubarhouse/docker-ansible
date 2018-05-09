# Ansible Docker Images

A single repository for all the Docker images for Ansible role testing.

These images are maintained with the best version of Python and Ansible for long term support - despite the nessesity.

## Images

| Branch    | Operating System | Python  | Ansible | Date       | Usable  |
| --------- |------------------| ------- | ------- |----------- | ------- |
| centos-5  | CentOS 5         |         |         |            | No     |
| centos-6  | CentOS 6         | 2.6.6   | 2.4.2.0 | 27/01/2018 | Yes    |
| centos-7  | CentOS 7         |         |         | 27/01/2018 | Yes    |
| wheezy    | Debian 7         | 2.7.3   | 2.4.2.0 | 27/01/2018 | Yes    |
| jessie    | Debian 8         | 2.7.9   | 2.4.2.0 | 27/01/2018 | Yes    |
| stretch   | Debian 9         | 2.7.13  | 2.4.2.0 | 27/01/2018 | Yes    |
| buster    | Debian 10        | 2.7.14+ | 2.4.2.0 | 27/01/2018 | Yes    |
| fedora-24 | Fedora 24        | 2.7.13  | 2.4.2.0 | 27/01/2018 | Yes    |
| fedora-25 | Fedora 25        | 2.7.13  | 2.4.2.0 | 27/01/2018 | Yes    |
| fedora-26 | Fedora 26        | 2.7.14  | 2.4.2.0 | 27/01/2018 | Yes    |
| fedora-27 | Fedora 27        | 2.7.14  | 2.4.2.0 | 27/01/2018 | Yes    |
| fedora-28 | Fedora 28        | 2.7.14  | 2.5.2.0 | 28/04/2018 | Yes    |
| precise   | Ubuntu 12.04     | 2.7.13  | 2.4.2.0 | 26/01/2018 | Yes    |
| quantal   | Ubuntu 12.10     | 2.7.13  | 2.4.2.0 | 04/02/2018 | Yes    |
| raring    | Ubuntu 13.04     | 2.7.4   | 2.4.2.0 | 26/01/2018 | Yes    |
| saucy     | Ubuntu 13.10     | 2.7.5+  | 2.4.2.0 | 26/01/2018 | Yes    |
| trusty    | Ubuntu 14.04     | 2.7.12  | 2.5.2.0 | 10/05/2018 | Yes    |
| utopic    | Ubuntu 14.10     | 2.7.10  | 2.4.2.0 | 26/01/2018 | Yes    |
| vivid     | Ubuntu 15.04     | 2.7.9   | 2.4.2.0 | 27/01/2018 | Yes    |
| wily      | Ubuntu 15.10     | 2.7.10  | 2.4.2.0 | 26/01/2018 | Yes    |
| xenial    | Ubuntu 16.04     | 2.7.12  | 2.4.2.0 | 31/01/2018 | Yes    |
| yakkety   | Ubuntu 16.10     | 2.7.12+ | 2.4.3.0 | 10/02/2018 | Yes    |
| zesty     | Ubuntu 17.04     | 2.7.13  | 2.4.2.0 | 27/01/2018 | Yes    |
| artful    | Ubuntu 17.10     | 2.7.14  | 2.4.2.0 | 27/01/2018 | Yes    |
| bionic    | Ubuntu 18.04     | 2.7.14+ | 2.4.2.0 | 27/01/2018 | Yes    |

*Notes*:

* CentOS-5 simply needs work, but given the state of CentOS 6 it's unlikely to progress.

## Credit

Some image files have been copied from existing repositories available under an MIT license.

The foundation for a lot of these images can only be credited to the fantastic work by [Jeff Geerling](http://jeffgeerling.com/).

I have simply consolidated and expanded for personal use for testing my own Ansible roles.