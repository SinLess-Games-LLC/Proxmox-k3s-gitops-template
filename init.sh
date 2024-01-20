#!/bin/bash -e
red='\e[31m'
green='\e[32m'
yellow='\e[33m'
reset='\e[0m'
echo -e "${red}=========================================${reset}"
echo -e "${red}=========================================${reset}"
echo -e "${red}==           ${green}Running init.sh           ${red}==${reset}"
echo -e "${red}=========================================${reset}"
echo -e "${red}=========================================${reset}"
echo -e "${yellow}creating virtual environment${reset}"
python3 -m venv .venv
echo -e "${yellow}Activating virtual environment${reset}"
source .venv/bin/activate > /dev/null
echo -e "${yellow}Installing python3-pip${reset}"
python3 -m pip install --upgrade pip setuptools wheel > /dev/null
echo -e "${yellow}Installing python requirements.txt${reset}"
echo -e "PWD" ${pwd}
python3 -m pip install -r ./requirements.txt
echo -e "${yellow}Installing ansible-galaxy requirements.yaml${reset}"
.venv/bin/ansible-galaxy install --role-file ./requirements.yaml
