# Packer_Issue
Reproduces an issue noted in https://github.com/hashicorp/packer/issues/6268

If you comment out the lines that install the updated kernel packages in the scripts/initial_configuration.sh script it will create a non-ENA enabled AMI:
```
sudo yum install NetworkManager cloud-init ruby perl net-tools curl wget htop bind-utils mailx nss dkms yum-utils -y
sudo yum install growpart cloud-init cloud-utils-growpart dracut-modules-growroot -y
sudo yum update sudo systemd wpa_supplicant expat firewalld libssh2 libgcrypt krb5-libs openssh util-linux vim-minimal vim-enhanced grub2 dhcp pcre python libxml2 openssl glibc python-perf kernel kernel-tools kernel-headers bind-utils -y
```
As is it will import an AMI with ENA enabled.

You probably don't have a chef recipe named system_baseline::packer_default either... you can remove the chef provisioner from the template as it does not matter to reprodce the issue.
