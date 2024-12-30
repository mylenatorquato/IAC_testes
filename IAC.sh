#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM

echo "Criando usuários..."

useradd mylena -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "Permissões dos diretórios"

chown root:GRP_ADM /adm 
chown root:GRP_ADM /ven
chown root:GRP_ADM /sec

chmod 777 /adm
chmod 777 /ven
chmod 777 /sec

echo "Fim..."