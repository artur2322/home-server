# Установка сервера

## Установка Ubuntu Server

- ISO: ubuntu-24.04-live-server-amd64.iso
- Установлен в GNOME Boxes
- Настроена сеть: NAT + проброс портов (2222 → 22)
- Установлен OpenSSH Server

## Первичная настройка

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y htop curl wget nano git net-tools
