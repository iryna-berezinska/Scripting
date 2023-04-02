#!/bin/sh

echo "Uptime info:" >> log_file.txt
up_time=$(uptime)
echo $up_time >> log_file.txt
echo " " >> log_file.txt 

echo "Current users:" >> log_file.txt
current_users=$(w)
echo $current_users >> log_file.txt
echo " " >> log_file.txt

echo "Recent logins:" >> log_file.txt
recent_logins=$(last -a | head -n 10)
echo $recent_logins >> log_file.txt
echo " " >> log_file.txt

echo "TOP-10 processes by CPU usage:" >> log_file.txt
cpu_usage=$(ps aux --sort=-%cpu | head -n 10)
echo $cpu_usage >> log_file.txt
echo " " >> log_file.txt

echo "TOP-10 processes by RAM usage:" >> log_file.txt
ram_usage=$(ps aux --sort=-%mem | head -n 10)
echo $ram_usage >> log_file.txt
echo " " >> log_file.txt

echo "Virtual Memory usage:" >> log_file.txt
virtual_memory_usage=$(free -h)
echo $virtual_memory_usage >> log_file.txt
echo " " >> log_file.txt

echo "Usage of disk space:" >> log_file.txt
usage_disk_space=$(df -h)
echo $usage_disk_space >> log_file.txt
