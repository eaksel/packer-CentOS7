#!/bin/bash -eux

yum -y update

yum -y install epel-release

yum -y update

# install general purpose packages
# install bash-completion
echo "***** Installing bash-completion"
yum -y install bash-completion

# install ccze
echo "***** Installing ccze"
yum -y install ccze

# install curl
echo "***** Installing curl"
yum -y install curl

# install git
echo "***** Installing git"
yum -y install git

# install rsync
echo "***** Installing rsync"
yum -y install rsync

# install screen
echo "***** Installing screen"
yum -y install screen

# install tcpdump
echo "***** Installing tcpdump"
yum -y install tcpdump

# install vim
echo "***** Installing vim"
yum -y install vim

# install wget
echo "***** Installing wget"
yum -y install wget