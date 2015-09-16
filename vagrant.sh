#!/bin/bash

sudo adduser --disabled-password --gecos "" --quiet itmarkets
sudo adduser itmarkets vagrant
sudo su itmarkets
mkdir -p /home/itmarkets/.ssh
cat /.tmpssh/id_rsa.pub > /home/itmarkets/.ssh/authorized_keys
sudo chown itmarkets /home/itmarkets/.ssh
sudo chown itmarkets /home/itmarkets/.ssh/authorized_keys
sudo chmod 700 /home/itmarkets/.ssh
sudo chmod 600 /home/itmarkets/.ssh/authorized_keys