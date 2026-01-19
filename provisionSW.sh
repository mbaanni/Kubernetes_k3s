#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install curl -y

curl -sfL https://get.k3s.io | sh -s
