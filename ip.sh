#!/bin/bash
clear
read -p "IP: " -d'.' IP; read -p "" -d'.' IP1; read -p "" -d'.' IP2; read -p "" IP3; echo
echo "$IP.$IP1.$IP2.$IP3" > /home/vagrant/ip.txt
grep -E -q '^[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5](\.[0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]){3}$' /home/vagrant/ip.txt
case $? in
	0) echo "IP válido";;
	*) echo "IP inválido";;
esac
