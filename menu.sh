#!/bin/bash

# Warna
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

while true; do
clear
echo -e "${CYAN}╔════════════════════════════════════════════╗"
echo -e "║           sc by t.me/xydark               ║"
echo -e "╚════════════════════════════════════════════╝${NC}"
echo -e "${YELLOW} 1.${NC} MENU SSH & OVPN"
echo -e "${YELLOW} 2.${NC} MENU XRAY"
echo -e "${YELLOW} 3.${NC} MENU L2TP"
echo -e "${YELLOW} 4.${NC} MENU NOOBZVPNS"
echo -e "${YELLOW} 5.${NC} SETTINGS"
echo -e "${YELLOW} 6.${NC} ON/OFF SERVICES"
echo -e "${YELLOW} 7.${NC} STATUS SERVICES"
echo -e "${YELLOW} 8.${NC} UPDATE SCRIPT"
echo -e "${YELLOW} 9.${NC} REBUILD OS"
echo -e "${YELLOW} 0.${NC} EXIT"
echo -e "${CYAN}══════════════════════════════════════════════${NC}"
read -rp "Pilih opsi [0-9]: " opt
case $opt in
  1) menu-ssh ;;
  2) menu-xray ;;
  3) menu-l2tp ;;
  4) menu-noobzvpns ;;
  5) menu-setting ;;
  6) menu-onoffservices ;;
  7) status-services ;;
  8) update-script ;;
  9) rebuild-os ;;
  0) exit ;;
  *) echo -e "${RED}Opsi tidak valid!${NC}" && sleep 2 ;;
esac
done
