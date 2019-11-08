#!/bin/bash

printf "\033c"
echo ------------------------------
echo Introduce email de GitHub ----
echo ------------------------------
read email
git config --global user.name $email

echo ------------------------------
echo Introduce nick de GitHub -----
echo ------------------------------
read nick
git config --global user.name $nick

echo ------------------------------
echo PULSA ENTER 2 VECES - $nick
echo ------------------------------
echo ------------------------------
ssh-keygen -t rsa -b 4096 -C $email
echo ------------------------------


echo ------------------------------
echo Claves del sistema ---------
echo ------------------------------
ls -al ~/.ssh
echo ------------------------------
echo ------------------------------
sleep .5

echo ------------------------------
echo Creando claves en el sistema...
echo ------------------------------
clip < ~/.ssh/id_rsa.pub
echo ------------------------------
echo ------------------------------
sleep .5

echo ------------------------------
echo Ve a Github.com - Settings - SSH and GPC keys - New SSH key - Ponle un nombre y haz Control + V en el campo Key
echo ------------------------------
echo ------------------------------
sleep 2.5

echo ------------------------------
echo Cuando hayas terminado pulsa ENTER
echo ------------------------------
read email

echo ------------------------------
echo Comprobacion -----------------
echo ------------------------------
ssh -T git@github.com
sleep 2.5

echo -----------------------------
echo Programa terminado ----------
echo -----------------------------
sleep 2.5

echo -----------------------------
echo Si existe -Permission denied- visita: https://help.github.com/en/github/authenticating-to-github/error-permission-denied-publickey
echo y sigue las instrucciones
echo -----------------------------
