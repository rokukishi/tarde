#!/bin/bash
clear
read -n2 -p "Data: " DIA; read -n2 -p/ MES; read -n4 -p/ ANO; echo
echo "$DIA/$MES/$ANO" > /home/vagrant/data.txt
[[ $(grep -E '^(0[1-9]|1[0-9]|2[0-9]|3[0-1])/(0[1-9]|1[0-2])/(19[0-9]{2}|200[0-9]|201[0-8])$' /home/vagrant/data.txt ) ]] && echo "Válido" || echo "Inválido"

