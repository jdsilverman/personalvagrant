#!/bin/bash

adduser --disabled-password --gecos "" --quiet itmarkets
sudo adduser itmarkets vagrant
sudo su itmarkets
mkdir -p /home itmarkets/.ssh
echo -e "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCeRTQCcOsZmhbILvuHKxZQnvJgCx3Sn4yZrBbUw+zL+Rtj56vshTAGgGGakjd96CzciaAuA7KclBjC1tAcsLufKc61brA4gbK3Y44lpnYpgXuZNGKh04PJtpYLVRKPf5RtfAacyGtIy6gSIH4JkPUTFovnDZYlQfqzN2PTD8Kex4rh73BBrsIgdU+BPt2D2ygIVjwtT8CAqbbswDf1alC5zzjoeYqb6W+ExAFVvwxXwttsMbxw1XVQgGCk2Yg4YQxTyfub96qcGwElQ6UC684NPcjBJ1Wi4CIleK8J2J36UMhLo+IZx9FSA3iCBwZXJpD3Aq7KsBaob/3jglgHDm/f Meru@ip-10-0-4-194.ec2.internal" > /home itmarkets/.ssh/authorized_keys/id_rsa.pub
sudo chown build /home itmarkets/.ssh
sudo chown itmarkets /home itmarkets/.ssh/authorized_keys
sudo chmod 744 /home itmarkets/.ssh
sudo chmod 600 /home itmarkets/.ssh/authorized_keys
 