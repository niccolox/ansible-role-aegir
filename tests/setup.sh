#!/usr/bin/env bash
#/bin/sh

# Completely remove mysql
#sudo apt-get remove -y --purge mysql-server mysql-client mysql-common
#sudo apt-get autoremove -y
#sudo apt-get autoclean
#sudo rm -rf /var/lib/mysql
#sudo rm -rf /root/.my.cnf

sudo bash /vagrant/tests/install-ansible.sh

sudo ansible-galaxy install -r /vagrant/tests/requirements.yml -f

# ansible-galaxy install --ignore-errors https://github.com/geerlingguy/ansible-role-mysql,,geerlingguy.mysql --roles-path=/etc/ansible/roles/
# ansible-galaxy install --ignore-errors https://github.com/ergonlogic/ansible-role-drush,,ergonlogic.drush --roles-path=/etc/ansible/roles/

target=/etc/ansible/roles/ansible-role-aegir
if [ ! -e $target ]; then
  mkdir -p /etc/ansible/roles
  ln -s /vagrant/ $target
fi
 
