#!/bin/bash

if [ "$USER" != "root" ]; then
	echo "Please execute this script as root!"
	exit 0
fi
apt -y install iptables
apt -y install net-tools
cp interfaces /etc/network/interfaces
cp sysctl.conf /etc/sysctl.conf
cp resolv.conf /etc/resolv.conf
sysctl -p
systemctl restart networking
echo "Installed Router"
