#!/bin/sh

echo "OS version:" >> os_info.txt
os_version=$(uname -a)
echo $os_version >> os_info.txt
echo " " >> os_info.txt 

echo "IP config:" >> os_info.txt
ip_config=$(ifconfig -a)
echo $ip_config >> os_info.txt
echo " " >> os_info.txt

echo "IP address:" >> os_info.txt
ip_address=$(ip address show)
echo $ip_address >> os_info.txt
echo " " >> os_info.txt

echo "Resolv conf:" >> os_info.txt
resolv_conf=$(cat /etc/resolv.conf)
echo $resolv_conf >> os_info.txt
echo " " >> os_info.txt

echo "Sysctl conf:" >> os_info.txt
sysctl_conf=$(cat /etc/sysctl.conf)
echo $sysctl_conf >> os_info.txt
echo " " >> os_info.txt
