#!/bin/bash


# Delete old SSH keys
rm -r /home/vagrant/.ssh/id_rsa*

# Create SSH key
ssh-keygen -t rsa -m PEM -N "" -q

# # Copy SSH keys
# cat >> /home/vagrant/.ssh/authorized_keys <<EOF
# $(cat /vagrant/ssh_key.pub)
# EOF

# cp /vagrant/ssh_key /home/vagrant/.ssh/
# cp /vagrant/ssh_key.pub /home/vagrant/.ssh/
# chmod 600 /home/vagrant/.ssh/ssh_key*