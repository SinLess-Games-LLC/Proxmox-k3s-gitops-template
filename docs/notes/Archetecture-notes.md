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
