#!/bin/bash

sudo su -c 'true > /var/log/lastlog'
sudo su -c 'true > /var/log/wtmp'
sudo su -c 'true > /var/log/btmp'
sudo su -c 'gem uninstall rspec serverspec rake bundler -V -a -x -I'
# sudo su -c 'yum remove chef -y'
# sudo su -c 'yum clean all'
# sudo su -c 'rm -rf /var/cache/yum'
# sudo su -c 'mv /var/lib/rpm/__db* /tmp/'
# sudo su -c 'rpm --rebuilddb'
sudo su -c 'rm -rf /tmp/*'
sudo su -c 'rm -rf /etc/udev/rules.d/70-persistent-net.rules'
sudo find /var/log -type f | while read -r f; do echo -ne '' > "${f}"; done
sudo rm -rf /etc/ssh/*key*
#   sudo su -c "/bin/sed -i '/^GRUB\_CMDLINE\_LINUX/s/\"$/\ net\.ifnames\=0\"/' /etc/default/grub"
sudo sync
sudo df -h
sudo uname -a
sudo cat /etc/redhat-release
sudo su -c 'history -c'
