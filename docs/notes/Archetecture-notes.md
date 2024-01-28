# Archetecture Notes

The system will use:

- Packer: to build the images
- Ansible: to configure the images
- Terraform: to provision the infrastructure
- Cloudflared: to provide DNS over HTTPS

hypervisor: Proxmox

## Kubernetes Cluster

software: k3s
control plane: 3 nodes
worker nodes: 4 nodes
autoscaling:

- hybrid: k3s + k8s (AWS, EKS/ECS)

## Storage


## setup zsh

```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="strug"/g' ~/.zshrc
  sed -i 's/plugins=(git)/plugins=(git ansible aws colorize bundler dotenv docker docker-compose direnv fluxcd git-flow git-commit git-extras gitignore helm istioctl kubectl sudo suse systemd terraform vagrant vault vscode zsh-interactive-cd zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc
```
