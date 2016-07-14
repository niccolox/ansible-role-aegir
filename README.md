# Ansible Role: Aegir version for Aegir 3.6 and Xenial Ubuntu 16.04 and Php7



[![Build Status](https://travis-ci.org/niccolox/ansible-role-aegir.svg?branch=master)](https://travis-ci.org/niccolox/ansible-role-aegir)

Installs Aegir, a control panel for deploying and managing large networks of Drupal sites.

## Requirements

A MySQL server is required. This server can be installed on the same machine,
or a separate one (hence why this isn't listed as a dependency.) See the
'Example Playbook' section below for a simple method of installing a mysql
server with Ansible. If this role is not present, then the
`mysql_root_username`and `mysql_root_password` variables must be set.

## Role Variables

NOTE: default variables are NOT for Xenial

override those default variables using example-site.yml 

when running vagrant up, the tests/test.yml Playbook is run and this will use those variables


## Dependencies

  geerlingguy.mysql
  ergonlogic.drush
  
## Example Playbook

see example-site.yml

After the playbook runs, the Aegir front-end site will be available, as will
the Drush extensions (Provision, et. al.) that do the heavy lifting.

## Usage

to get into Aegir Hostmaster UI first time

vagrant@aegir-xenial-php7:~$ sudo -i
root@aegir-xenial-php7:~# su aegir
aegir@aegir-xenial-php7:/root$ drush uli
We could not find an applicable site for that command.                                                                                 [error]
aegir@aegir-xenial-php7:/root$ drush @hm uli
http://aegir-xenial-php7.local/user/reset/1/1468522482/6HYlDFgBK1DsQkfV_U9-85wyCWOnT42QPXI73OZlXYY/login


## License

MIT / BSD

## Author Information

This role was created in 2015 by [Christopher Gervais](http://ergonlogic.com/), lead maintainer of the [Aegir Hosting System](http://www.aegirproject.org).
