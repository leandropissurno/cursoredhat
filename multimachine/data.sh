#!/bin/bash
echo "vagrant:vagrant"|chpasswd
echo "root:dataprev"|chpasswd
setenforce 0
systemctl stop firewalld;systemctl disable firewalld
timedatectl set-timezone America/Sao_Paulo
echo net.ipv6.conf.default.disable_ipv6 = 1 >> /etc/sysctl.conf
echo net.ipv6.conf.all.disable_ipv6 = 1 >> /etc/sysctl.conf
sysctl -p