#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install curl -y
cp /home/vagrant/vagrant_data/id_rsa /home/vagrant/.ssh/id_rsa
cat /home/vagrant/vagrant_data/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

curl -sfL https://get.k3s.io | K3S_URL=https://192.168.56.110:6443 K3S_TOKEN="$(cat /home/vagrant/vagrant_data/token)" sh -s
