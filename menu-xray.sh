#!/bin/bash

# Warna
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

clear
echo -e "${CYAN}╔════════════════════════════════════════════╗"
echo -e "║             XRAY MANAGEMENT MENU          ║"
echo -e "╚════════════════════════════════════════════╝${NC}"
echo -e "${YELLOW} 1.${NC} Add VMess WS"
echo -e "${YELLOW} 2.${NC} Add VLESS WS"
echo -e "${YELLOW} 3.${NC} Add Trojan WS"
echo -e "${YELLOW} 4.${NC} Add VMess gRPC"
echo -e "${YELLOW} 5.${NC} Add VLESS gRPC"
echo -e "${YELLOW} 6.${NC} Add Trojan gRPC"
echo -e "${YELLOW} 7.${NC} Delete XRAY Account"
echo -e "${YELLOW} 8.${NC} Renew XRAY Account"
echo -e "${YELLOW} 9.${NC} Change UUID XRAY"
echo -e "${YELLOW}10.${NC} Check XRAY Logins"
echo -e "${YELLOW}11.${NC} Check XRAY Services"
echo -e "${YELLOW}12.${NC} Limit Kuota/IP XRAY"
echo -e "${YELLOW}13.${NC} Create Manual XRAY (All Payload)"
echo -e "${YELLOW} 0.${NC} Back to Main Menu"
echo -e "${CYAN}══════════════════════════════════════════════${NC}"
read -rp "Select option [0-13]: " opt
case $opt in
  1) addvmess ;;
  2) addvless ;;
  3) addtrojan ;;
  4) addvmessgrpc ;;
  5) addvlessgrpc ;;
  6) addtrojangrpc ;;
  7) delxray ;;
  8) renewxray ;;
  9) uuidxray ;;
 10) ceklogxray ;;
 11) cekstatusxray ;;
 12) menu-xray-limit ;;
 13) menu-createxray ;;
  0) menu ;;
  *) echo -e "${RED}Invalid option!${NC}" && sleep 1 && bash menu-xray ;;
esac
