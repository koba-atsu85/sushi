#!/bin/bash -ex
sudo -s
yum update

yum -y update kernel
yum -y install kernel-devel kernel-headers dkms gcc gcc-c++

/opt/VBoxGuestAdditions-5.0.12/init/vboxadd setup
