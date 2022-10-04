#!/bin/bash

###Criando diretórios###
echo "Criando diretórios"

mkdir /publico /adm /ven /sec

###Criando grupos###
echo "Criando grupos"

groupadd -f GRP_ADM
groupadd -f GRP_VEN
groupadd -f GRP_SEC

###Criando usuários###
echo "Criando usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd senha123)

useradd debora -m -s /bin/bash -p $(openssl passwd senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123)

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd senha123)

###Usuários para seus grupos###
echo "Adicionando usuários aos seus grupos"

usermod carlos -a -G GRP_ADM
usermod maria -a -G GRP_ADM
usermod joao -a -G GRP_ADM

usermod debora -a -G GRP_VEN
usermod sebastiana -a -G GRP_VEN
usermod roberto -a -G GRP_VEN

usermod josefina -a -G GRP_SEC
usermod amanda -a -G GRP_SEC
usermod rogerio -a -G GRP_SEC

###Permissões e donos dos diretórios###
echo "Dando permissões aos diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Atribuido Dono e grupos ao diretório"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Fim do script"
