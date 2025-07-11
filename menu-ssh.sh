#!/bin/bash

# Color Setup
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

clear
echo -e "${CYAN}╔════════════════════════════════════════════╗"
echo -e "║        SSH & OVPN MANAGEMENT MENU         ║"
echo -e "╚════════════════════════════════════════════╝${NC}"
echo -e "${YELLOW} 1.${NC} Create SSH Account"
echo -e "${YELLOW} 2.${NC} Delete SSH Account"
echo -e "${YELLOW} 3.${NC} Renew SSH Account"
echo -e "${YELLOW} 4.${NC} Check Active Logins"
echo -e "${YELLOW} 5.${NC} Check SSH Limit"
echo -e "${YELLOW} 6.${NC} Auto Kill Multi Login"
echo -e "${YELLOW} 7.${NC} List All SSH Users"
echo -e "${YELLOW} 0.${NC} Back to Main Menu"
echo -e "${CYAN}══════════════════════════════════════════════${NC}"
read -rp "Select option [0-7]: " opt
case $opt in
  1) addssh ;;
  2) delssh ;;
  3) renewssh ;;
  4) ceklogssh ;;
  5) ceklimitssh ;;
  6) killssh ;;
  7) cat /etc/xray/ssh-db.txt ;;  # Atau database akun kamu
  0) menu ;;
  *) echo -e "${RED}Invalid option!${NC}" && sleep 1 && bash menu-ssh ;;
esac
