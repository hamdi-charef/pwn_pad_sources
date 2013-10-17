#!/bin/bash

/etc/init.d/ssh start

##################################################
f_modprobe(){
#load all modules for external adapters:
mkdir -p /dev/net/
ln -s /dev/tun /dev/net/tun
modprobe ath9k_htc
modprobe btusb
modprobe tun
}

f_modprobe


ssh -t root@localhost "cd /opt/pwnpad/wireless/kismet/ ; kismet ; bash"

