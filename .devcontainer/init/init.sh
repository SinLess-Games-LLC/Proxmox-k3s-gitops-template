#!/bin/zsh

packer plugins install github.com/hashicorp/proxmox
git config --global user.name 'Timothy Pierce'
git config --global user.email 'disdainful777@gmail.com'
git config --global user.signingkey '0A723301C7AF24F5'
python3 -m venv .venv
source .venv/bin/activate > /dev/null
python3 -m pip install --upgrade pip setuptools wheel > /dev/null
python3 -m pip install -r ./requirements.txt
.venv/bin/ansible-galaxy install --role-file ./requirements.yaml
