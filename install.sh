#!/bin/bash
sudo cp interfaces /etc/network/interfaces
sudo cp sysctl.conf /etc/sysctl.conf
sudo cp resolv.conf /etc/resolv.conf
sudo systemctl restart networking
