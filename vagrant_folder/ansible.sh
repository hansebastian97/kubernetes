#!/bin/bash

# Create SSH keys
rm -r /home/vagrant/.ssh/id_rsa*
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa -m PEM -N "" -q

# # Copy SSH keys
# cat >> /home/vagrant/.ssh/authorized_keys <<EOF
# $(cat /vagrant/ssh_key.pub)
# EOF

# cp /vagrant/ssh_key /home/vagrant/.ssh/
# chmod 600 /home/vagrant/.ssh/ssh_key

sudo apt update -y
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y