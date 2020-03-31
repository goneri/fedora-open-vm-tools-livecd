#!/bin/bash
test -f /usr/sbin/lorax || dnf install -y lorax
find /usr/share/lorax/ -name isolinux.cfg -exec sudo cp -v my_templates/templates.d/99-generic/config_files/x86/isolinux.cfg {} \;
curl -C - https://download.fedoraproject.org/pub/fedora/linux/releases/31/Server/x86_64/iso/Fedora-Server-netinst-x86_64-31-1.9.iso
livemedia-creator --make-iso --iso /home/goneri/Downloads/Fedora-Server-dvd-x86_64-31-1.9.iso --ks=fedora-open-vm-tools.ks --resultdir=result --ram 2048 --vcpus 4
