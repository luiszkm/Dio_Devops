#!/bin/bash
echo "Criando diretorio" 
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de usuarios" 

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " Criando usurios" 

useradd carlos -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd cleide -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo "Especificando permiossoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."



