#!/bin/bash -eux

# Colorize root shell prompt
echo "***** Colorizing root shell prompt"
echo 'export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"' >> /root/.bashrc

# Customize vim
echo "***** Customizing vim"
echo -e "set nocompatible\nset number\nsyntax on\nhighlight Comment ctermfg=LightCyan" >> /root/.vimrc

# sshd config
echo "***** Configuring sshd"
grep -e "^#UseDNS yes" /etc/ssh/sshd_config && sed -i "s/^#UseDNS yes/UseDNS no/" /etc/ssh/sshd_config

grep -e "^UseDNS yes" /etc/ssh/sshd_config && sed -i "s/^UseDNS yes/UseDNS no/" /etc/ssh/sshd_config

grep -e "^#GSSAPIAuthentication yes" /etc/ssh/sshd_config && sed -i "s/^#GSSAPIAuthentication yes/GSSAPIAuthentication no/" /etc/ssh/sshd_config

grep -e "^GSSAPIAuthentication yes" /etc/ssh/sshd_config && sed -i "s/^GSSAPIAuthentication yes/GSSAPIAuthentication no/" /etc/ssh/sshd_config

# Disable Postfix
echo "***** Disabling Postfix"
systemctl stop postfix
systemctl disable postfix

# Update root certs
echo "***** Updating root certificates"
wget --no-check-certificate -O /etc/pki/tls/certs/ca-bundle.crt https://curl.haxx.se/ca/cacert.pem