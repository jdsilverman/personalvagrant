#!/bin/bash

sudo adduser --disabled-password --gecos "" --quiet itmarkets
sudo adduser itmarkets vagrant
sudo su itmarkets
mkdir -p /home/itmarkets/.ssh
echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDjePYWLLYlquoam/SVSoQpx/rfCaaSQWLlMEJ0xPgdzy+tJLO+f83IRkRp8iaiGMdf4RTAf9ih8KVGOnYwyTzBA49GAoToH0/NZnkRvcHdFBqZolYKzyV/6Rt+06B+aX2I8ggsE6V5Q+L6DBybXI5BX74+rf7ynJHw8Nb+WRwRoPv1BhMUGiaFDEAuPy6o56G/cPhZ5fm0YeHqYp/mEOcjiCr935N0myo2j4abW6o3sPr+2xlbi3qMAwnbhmqz1vQazZQ0LLpwMxN+HVkjtax7sPvYVesyw+DENzonCkw4Gooh+H8SIUXI3hf0fuBHDETtD9ZgY0UdRrhFJdeW0a2f Meru@ip-10-0-4-106.ec2.internal" > /home/itmarkets/.ssh/authorized_keys
sudo chown itmarkets /home/itmarkets/.ssh
sudo chown itmarkets /home/itmarkets/.ssh/authorized_keys
sudo chmod 700 /home/itmarkets/.ssh
sudo chmod 600 /home/itmarkets/.ssh/authorized_keys