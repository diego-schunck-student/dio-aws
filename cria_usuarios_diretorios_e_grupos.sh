#!/bin/bash




##Criar Diretorios

mkdir /publico && chmod 777 /publico
mkdir /adm  && chmod 770 /adm
mkdir /ven  && chmod 770 /ven
mkdir /sec  && chmod 770 /sec



##Grupos ADD
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


##AddUser

useradd carlos -c "Usuário carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)  -G GRP_ADM
useradd maria -c "Usuário maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)   -G GRP_ADM
useradd joao -c "Usuário joao" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)   -G GRP_ADM


useradd debora -c "Usuário debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)   -G GRP_VEN
useradd sebastiana -c "Usuário sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Usuário roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)  -G GRP_VEN

useradd josefina -c "Usuário josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Usuário amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Usuário rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo "Finalizado criacao de usuarios"



