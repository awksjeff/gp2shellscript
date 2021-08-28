#!/bin/bash
echo ___________________________________________________

echo  "Nome da maquina "  
hostname                 
echo _____________________________________________________

echo "Data e Hora"
date | sed 's/\+/ /g' | cut -d " " -f1,2,3,4,5

echo _____________________________________________________

echo "Desde que horário a máquina está ativa"
uptime | sed 's/\s\+/ /g' | cut -d' ' -f4,5 | cut -d "," -f1
echo _____________________________________________________

echo " Versão do Kernel "
uname -r | cut -d "-" -f 1
echo ______________________________________________________

echo " Quantidade de CPU'S/CORES do linux"
lscpu  | sed -n 5p

echo ______________________________________________________

echo  " Modelo da Cpu "
lscpu | sed -n 14p
echo _______________________________________________________

echo " Total de memória Ram Disponivel "
free | sed 's/\s\+/ /g' | cut -d' ' -f4 | sed -n 1,2p

echo ________________________________________________________

echo " Partições de disco "
lsblk

echo _________________________________________________________
