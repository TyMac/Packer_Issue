#!/bin/bash

sudo su -c 'echo \"namserver 9.9.9.9\" >> /etc/resolve.conf'
sudo su -c 'yum install ntp -y'
sudo su -c 'systemctl enable ntpd'
sudo su -c 'ntpdate -s time.nist.gov'
sudo su -c 'hwclock --systohc'
sudo mkdir /root/scripts
sudo mkdir /etc/cloud
sudo mkdir /etc/chef
sudo mkdir /home/chef/.ssh
sudo su -c 'cat /tmp/chef_pub.txt >> /home/chef/.ssh/authorized_keys'
sudo su -c 'cat /tmp/known_hosts.txt > /home/chef/.ssh/known_hosts'
sudo su -c 'chmod 600 /home/chef/.ssh/authorized_keys'
sudo su -c 'touch /home/chef/.ssh/known_hosts'
sudo su -c 'chmod 600 /home/chef/.ssh/id_rsa'
sudo su -c 'chmod 644 /home/chef/.ssh/known_hosts'
sudo mv /tmp/cloud.cfg /etc/cloud/cloud.cfg
sudo su -c 'rm -rf /tmp/chef_pub.txt'
sudo su -c 'rm -rf /tmp/cloud.cfg'
# sudo su -c 'yum update -y'
sudo yum install NetworkManager cloud-init ruby perl net-tools curl wget htop bind-utils mailx nss dkms yum-utils -y
sudo yum install growpart cloud-init cloud-utils-growpart dracut-modules-growroot -y
 sudo yum update sudo systemd wpa_supplicant expat firewalld libssh2 libgcrypt krb5-libs openssh util-linux vim-minimal vim-enhanced grub2 dhcp pcre python libxml2 openssl glibc python-perf kernel kernel-tools kernel-headers bind-utils -y
sudo gem install rspec serverspec rake bundler --no-ri --no-rdoc
sudo su -c 'yum remove mariadb-libs -y'
sudo su -c 'yum remove dnsmasq -y'
sudo su -c 'systemctl enable cloud-init'
sudo su -c 'wget -v -O - "https://getcli.jfrog.io" -P /root/ | sudo sh'
sudo su -c 'cat /tmp/jfrog-cli.conf > /root/.jfrog/jfrog-cli.conf'
passwd -d root
passwd -l root
