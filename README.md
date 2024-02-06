# Proxmox k3s GitOps Repository

> [!IMPORTANT]
> This repository is a template to manage your Infrastructure as Code (IaC) using GitOps with k3s and Flux.
> This cluster also makes use of [devcontainers](https://code.visualstudio.com/docs/remote/containers) to provide a consistent development environment.

> [!NOTE]
> This repository assumes you have a working Proxmox server with ssh access and a registered domain name.

This repository is a template to manage your Infrastructure as Code (IaC) using GitOps with [k3s](https://k3s.io/) and [Flux](https://fluxcd.io/).
This repo uses several tools to manage the infrastructure, these are:

  1. [Ansible](https://www.ansible.com/): Ansible is used to manage the configuration of the cluster and the virtual machines on Proxmox.
  2. [Terraform](https://www.terraform.io/): Terraform is used to create the virtual machines on Proxmox and manage thier hardware configuration.
  3. [k3s](https://k3s.io/): k3s is a lightweight Kubernetes distribution that is used to manage the cluster.
  4. [Flux](https://fluxcd.io/)/[Gitops](https://docs.gitops.weave.works/)/[Flagger](https://www.weave.works/oss/flagger/)/[Scope](https://www.weave.works/oss/scope/): These tools are used to manage the cluster and the applications running on it.
  5. [Sops](https://github.com/getsops/sops)/[Age](https://github.com/FiloSottile/age): These tools are used to manage the secrets in the repository.

This repository is designed to be used with [Visual Studio Code](https://code.visualstudio.com/) and [devcontainers](https://code.visualstudio.com/docs/remote/containers) to provide a consistent development environment.

## Prerequisites

Before you begin, ensure you have met the following requirements:

* You have installed [Visual Studio Code](https://code.visualstudio.com/).
* You have installed the [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension for Visual Studio Code.
* You have installed [Docker](https://www.docker.com/).

## Using Proxmox k3s GitOps Repository


