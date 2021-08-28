#!/bin/bash

echo ____________________________________

read -p "Informe o nome de usuário: " n1

echo ___________________________________________________________________________________________

echo "O UID  do usuário $n1 é: " `id $n1 | sed 's/\s\+/ /g' | cut -d' ' -f1 | cut -d"(" -f1`

echo ___________________________________________________________________________________________

echo "Nome Completo / Descrição do Usuário: " `cat /etc/passwd | grep $n1 2>/dev/null`

echo ___________________________________________________________________________________________

echo "Total em uso no /home do usuário: " `df /home/$n1 | awk {'print $5'} `

echo ___________________________________________________________________________________________

echo "Informações do ultimo login do usuário:  " `last $n1 | tail -n3 | sed -n 1p`


