#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install curl -y
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s
