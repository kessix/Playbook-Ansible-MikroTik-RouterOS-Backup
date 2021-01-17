# @@ 
# Script para deploy configuração dos RoutersOS no Repositório Git ***@@@@@*******#SS
#

#!/bin/sh

#
# @@ 
# Variável de nome para o commit com commando $(date) do sistema
#
# getDateSystem obtem a data do sistema
getDateSystem="Backup $(date)"
# commitName obtém a data com a correção de espaços por underline pelo sed
commitName=$(echo $getDateSystem | sed s/" "/_/g)

# @@
# Commit e push da configuracao
#
# Diretório onde estão os arquivos salvos pelo playbook do ansible
cd /home/backup
git config --global user.name "Usuario Git"
git config --global user.email "E-mail configurado no repositório"
git add .
git commit -m $commitName
git push -u origin master

