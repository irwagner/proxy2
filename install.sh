#!/bin/bash

# Atualizar o sistema
sudo apt update

# Instalar o Squid
sudo apt install squid -y

# Baixar e substituir o arquivo de configuração do Squid
wget -O /etc/squid/squid.conf https://raw.githubusercontent.com/irwagner/proxy/main/squid.conf

# Reiniciar e habilitar o serviço Squid
sudo systemctl restart squid
sudo systemctl enable squid

# Instalar o Dante
sudo apt update
sudo apt install dante-server -y

# Baixar e substituir o arquivo de configuração do Dante
wget -O /etc/danted.conf https://raw.githubusercontent.com/irwagner/proxy/main/danted.conf

# Reiniciar e habilitar o serviço Dante
sudo systemctl restart danted
sudo systemctl enable danted

# Verificar o status do Dante
sudo systemctl status danted
