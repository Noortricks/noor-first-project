#!/bin/bash
clear
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
C='\033[1;36m'
W='\033[1;37m'
NC='\033[0m'

# ===== PASSWORD LOCK =====
echo -e "${R}╔══════════════════════════════════════╗"
echo -e "${R}║${Y}      🔒  NOOR PRO - LOCKED  🔒         ${R}║"
echo -e "${R}╚══════════════════════════════════════╝${NC}"
echo ""
read -s -p "Enter Password: " pass
echo ""
if [ "$pass" != "noor123" ]; then
echo -e "${R}[!] WRONG PASSWORD! Access Denied!${NC}"
echo -e "${R}This tool belongs to Noor - Peshawar${NC}"
exit
fi
echo -e "${G}[✓] Access Granted! Welcome Hacker Noor!${NC}"
sleep 1
clear

# ===== BANNER =====
echo -e "${G}╔══════════════════════════════════════╗"
echo -e "${G}║${Y}   ███╗   ██╗ ██████╗  ██████╗ ██████╗  ${G}║"
echo -e "${G}║${Y}   ████╗  ██║██╔═══██╗██╔═══██╗██╔══██╗ ${G}║"
echo -e "${G}║${Y}   ██╔██╗ ██║██║   ██║██║   ██║██████╔╝ ${G}║"
echo -e "${G}║${Y}   ██║╚██╗██║██║   ██║██║   ██║██╔══██╗ ${G}║"
echo -e "${G}║${Y}   ██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║ ${G}║"
echo -e "${G}║${Y}   ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ${G}║"
echo -e "${G}╠══════════════════════════════════════╣"
echo -e "${G}║${C}   TERMUX TOOL v3.0 | By NOOR - PESHAWAR  ${G}║"
echo -e "${G}╚══════════════════════════════════════╝${NC}"
echo ""

while true; do
echo -e "${C}┌───[ MENU ]─────────────────┐${NC}"
echo -e "${W}│ [1] Help                   │"
echo -e "${W}│ [2] Calendar               │"
echo -e "${W}│ [3] Create File            │"
echo -e "${W}│ [4] Cricket Game           │"
echo -e "${W}│ [5] My Info                │"
echo -e "${W}│ [0] Exit                   │"
echo -e "${C}└────────────────────────────┘${NC}"
echo ""
read -p "noor@termux:~$ " cmd
if [ "$cmd" == "1" ]; then
echo -e "${G}1=Help, 2=Calendar, 3=Create, 4=Cricket, 5=Info, 0=Exit${NC}"
elif [ "$cmd" == "2" ]; then
cal
date
elif [ "$cmd" == "3" ]; then
read -p "Enter File Name: " name
echo "Created by Noor - Peshawar" > "$name"
echo -e "${G}[✓] File Created: $name${NC}"
elif [ "$cmd" == "4" ]; then
echo -e "${G}🏏 SIXXXXX! You hit a SIX!${NC}"
elif [ "$cmd" == "5" ]; then
echo -e "${C}Name: Noor | City: Peshawar | Tool: NOOR LOCKED v3.0${NC}"
elif [ "$cmd" == "0" ]; then
echo -e "${R}Bye Noor! Allah Hafiz! 👋${NC}"
break
else
echo -e "${R}[!] Wrong Command! Try Again${NC}"
fi
echo ""
done
