# Ansible Docker Images

A single repository for all the Docker images for Ansible role testing.

These images are maintained with the best version of Python and Ansible for long term support - despite the nessesity.

## Images

| Branch    | Operating System | Python    | Ansible  | Date       | Usable      |
| --------- | ----------------- | --------- | -------- |----------- | ----------- |
| centos-5  | CentOS 5          |           |          |            | No          |
| centos-6  | CentOS 6          | 2.6.6     | 2.6.13.0 | 14/04/2019 | Yes         |
| centos-7  | CentOS 7          | 2.7.5     | 2.7.10.0 | 14/04/2019 | Yes         |
| wheezy    | Debian 7          | 2.7.15    | 2.7.5.0  | 31/12/2018 | Unsupported |
| jessie    | Debian 8          | 2.7.9     | 2.7.10.0 | 15/04/2019 | Yes         |
| stretch   | Debian 9          | 2.7.13    | 2.7.10.0 | 15/04/2019 | Yes         |
| buster    | Debian 10         | 2.7.16    | 2.7.10.0 | 14/04/2019 | Yes         |
| fedora-24 | Fedora 24         | 2.7.13    | 2.7.10.0 | 14/04/2019 | Yes         |
| fedora-25 | Fedora 25         | 2.7.13    | 2.7.10.0 | 14/04/2019 | Yes         |
| fedora-26 | Fedora 26         | 2.7.15    | 2.7.10.0 | 15/04/2019 | Yes         |
| fedora-27 | Fedora 27         | 2.7.15    | 2.7.10.0 | 15/04/2019 | Yes         |
| fedora-28 | Fedora 28         | 2.7.15    | 2.7.10.0 | 15/04/2019 | Yes         |
| fedora-29 | Fedora 29         | 3.7.3     | 2.7.10.0 | 15/04/2019 | Yes         |
| fedora-30 | Fedora 30         | 3.7.3     | 2.7.10.0 | 20/04/2019 | Yes         |
| fedora-31 | Fedora 31         | 3.7.3     | 2.7.10.0 | 14/04/2019 | Yes         |
| ubuntu/precise | Ubuntu 12.04 | 2.7.3     | 2.9.2.0   | 15/12/2019 | Unsupported |
| ubuntu/quantal | Ubuntu 12.10 | 2.7.13    | 2.4.2.0   | 04/02/2018 | Unbuildable |
| ubuntu/raring  | Ubuntu 13.04 | 2.7.4     | 2.4.2.0   | 26/01/2018 | Unbuildable |
| ubuntu/saucy   | Ubuntu 13.10 | 2.7.5+    | 2.4.2.0   | 26/01/2018 | Unbuildable |
| ubuntu/trusty  | Ubuntu 14.04 | 2.7.16    | 2.7.0.0   | 05/12/2019 | Yes         |
| ubuntu/utopic  | Ubuntu 14.10 | 2.7.10    | 2.9.2.0   | 05/12/2019 | Yes         |
| ubuntu/vivid   | Ubuntu 15.04 | 2.7.9     | 2.9.2.0   | 05/12/2019 | Yes         |
| ubuntu/wily    | Ubuntu 15.10 | 2.7.10    | 2.9.2.0   | 05/12/2019 | Yes         |
| ubuntu/xenial  | Ubuntu 16.04 | 2.7.12    | 2.9.2.0   | 05/12/2019 | Yes         |
| ubuntu/yakkety | Ubuntu 16.10 | 2.7.12+   | 2.9.2.0   | 05/12/2019 | Yes         |
| ubuntu/zesty   | Ubuntu 17.04 | 2.7.13    | 2.9.2.0   | 06/12/2019 | Yes         |
| ubuntu/artful  | Ubuntu 17.10 | 2.7.14    | 2.9.2.0   | 06/12/2019 | Yes         |
| ubuntu/bionic  | Ubuntu 18.04 | 2.7.15+   | 2.9.2.0   | 06/12/2019 | Yes         |
| ubuntu/cosmic  | Ubuntu 18.10 | 2.7.16    | 2.9.2.0   | 06/12/2019 | Yes         |
| ubuntu/disco   | Ubuntu 19.04 | 2.7.16    | 2.9.2.0   | 06/12/2019 | Yes         |
| ubuntu/eoan    | Ubuntu 19.10 | 2.7.17    | 2.9.6.0   | 11/04/2020 | Yes         |
| ubuntu/focal   | Ubuntu 20.04 | 3.8.2     | 2.10.1.0  | 29/09/2020 | Yes         |

*Notes*:

* CentOS-5 will not be receiving support..
* All images come with zero warranty or official support - and a MIT license.
* Support state as "yes" is defined as working in automated tests - if an image is using an OS which is EOL no support will be provided in any capacity.
* The best example of the usage of these images in CI can be found in the Travis CI tests of the [Ansible Role Tester](https://github.com/fubarhouse/ansible-role-tester) project.

## Credit

Some image files have been copied from existing repositories available under an MIT license.

The foundation for a lot of these images can only be credited to the fantastic work by [Jeff Geerling](http://jeffgeerling.com/).

This repository is a consolidated set of repositories as well as many others for personal use for testing my own Ansible roles.

If you're here, you may also be interested in my [Ansible Role Tester](https://github.com/fubarhouse/ansible-role-tester).
