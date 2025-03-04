#!/bin/bash


set -ex

apt update && sudo apt upgrade -y

# Descargar el script de instalación de Plesk
wget https://autoinstall.plesk.com/plesk-installer -O plesk-installer

# Asignar permisos de ejecución
chmod +x plesk-installer

# Ejecutar la instalación en modo desatendido

./plesk-installer install plesk

