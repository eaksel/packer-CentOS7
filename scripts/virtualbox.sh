#!/bin/bash -eux

echo "***** Installing Virtualbox Guest Utils"
yum -y install bzip2 dkms kernel-devel kernel-headers

mount -o loop /home/packer/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

rm -rf /home/packer/VBoxGuestAdditions.iso