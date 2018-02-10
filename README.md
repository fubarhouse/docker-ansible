# Ansible Docker Images

A single repository for all the Docker images for Ansible role testing.

These images are maintained with the best version of Python and Ansible for long term support - despite the nessesity.

## Images

| Branch    | Operating System | Python  | Ansible | Usable |
| --------- |------------------| ------- | ------- |------- |
| centos-5  | CentOS 5         |         |         | No     |
| centos-6  | CentOS 6         | 2.6.6   | 2.4.2.0 | Yes    |
| centos-7  | CentOS 7         |         |         | Yes    |
| wheezy    | Debian 7         |         |         | Yes    |
| jessie    | Debian 8         |         |         | Yes    |
| stretch   | Debian 9         |         |         | Yes    |
| buster    | Debian 10        |         |         | Yes    |
| fedora-24 | Fedora 24        |         |         | Yes    |
| fedora-25 | Fedora 25        |         |         | Yes    |
| fedora-26 | Fedora 26        |         |         | Yes    |
| fedora-27 | Fedora 27        |         |         | Yes    |
| precise   | Ubuntu 12.04     |         |         | Yes    |
| quantal   | Ubuntu 12.10     | 2.7.3   | 2.4.3.0 | Yes    |
| raring    | Ubuntu 13.04     |         |         | Yes    |
| saucy     | Ubuntu 13.10     |         |         | Yes    |
| trusty    | Ubuntu 14.04     |         |         | Yes    |
| utopic    | Ubuntu 14.10     |         |         | Yes    |
| vivid     | Ubuntu 15.04     |         |         | Yes    |
| wily      | Ubuntu 15.10     |         |         | Yes    |
| xenial    | Ubuntu 16.04     | 2.7.12  | 2.4.2.0 | Yes    |
| yakkety   | Ubuntu 16.10     | 2.7.12+ | 2.4.3.0 | No     |
| zesty     | Ubuntu 17.04     |         |         | Yes    |
| artful    | Ubuntu 17.10     |         |         | Yes    |
| bionic    | Ubuntu 18.04     |         |         | Yes    |

*Notes*:
* CentOS-5 simply needs work, but given the state of CentOS 6 it's unlikely to progress.
* Yakkety is undergoing some issues in transit to EOL support, and as such is largely unusable right now. It's expected this will change. 

## Credit

Some image files have been copied from existing repositories available under an MIT license.

The foundation for a lot of these images can only be credited to the fantastic work by [Jeff Geerling](http://jeffgeerling.com/).

I have simply consolidated and expanded for personal use for testing my own Ansible roles.