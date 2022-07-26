#!/bin/bash
echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd mariam -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joaos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd deboram -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd robertom -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefinam -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amandam -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogeriom -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Expecificando permissões..."

chown root:GRP_ADM /adm
chown root: GRP_VEN /ven
chown root: GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
