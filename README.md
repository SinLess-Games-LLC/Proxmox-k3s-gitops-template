# Proxmox k3s GitOps Repository

> [!IMPORTANT]
> This repository is a template to manage your Infrastructure as Code (IaC) using GitOps with k3s and Flux.
> This cluster also makes use of [devcontainers](https://code.visualstudio.com/docs/remote/containers) to provide a consistent development environment.
_
> [!NOTE]
> This repository assumes you have a working Proxmox server with ssh access and a registered domain name.

This repository is a template to manage your Infrastructure as Code (IaC) using GitOps with k3s and Flux.
This repo uses several tools to manage the infrastructure, these are:

  1. Ansible
  2. Terraform
  3. k3s
  4. Flux/Flagger/Scope
  5. sops/age
  6. Helm
  7. kubeconform
  8. cloudflared
  9. cert-manager
  10. etc

