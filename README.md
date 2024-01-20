# Helix AI IaC

[![GitHub release](https://img.shields.io/github/release/helix-ai-llc/helix-ai-iac.svg)]

<p align="center">
  <a href="https://helixaibot.com/" target="blank">
    <img src="DOCS/images/logos/Favicon-01.png" width="350" alt="Helix Ai Logo" />
  </a>
</p>

---

## Description

This repository contains the IaC for the Helix Ai project. It is a monorepo containing all the infrastructure code for the project.
this repo utilizes the gitflow workflow. The master branch is protected and can only be merged into via a pull request. The develop branch is the default branch and is the branch that all feature branches are created from. Feature branches are created from the develop branch and are named after the feature they are implementing. Feature branches are merged into the develop branch via a pull request. The develop branch is merged into the master branch via a pull request. The master branch is the branch that is deployed to.

This repo does the following with a tasks:

- Builds a packer image for a vm template
- Builds a packer VM template in proxmox
- Creates a VM for each host in the `/bootstrap/vars/config.yaml` file
- deploys the VM template to each VM\
- Prepares the VMs with the following:
  - sets the hostname
  - sets the timezone
  - sets the locale
  - sets the keyboard layout
  - sets the ssh keys
  - sets passwordless sudo
- Prepares for the installation of the [Kubernetes cluster](/docs/Kubernetes.md)
- Installs the [Kubernetes cluster](/docs/Kubernetes.md)
- Sets up FluxCD for GitOps
- sets up consul for service discovery
- sets up vault for secrets management
- sets up prometheus for monitoring
- sets up grafana for monitoring
- sets up loki for log aggregation
- sets up tempo for tracing
- sets up jaeger for tracing
- sets up elasticsearch for log aggregation
- sets up kibana for data visualization
- sets up beats for log shipping
- sets up logstash for log shipping
- sets up redis for caching
- sets up minio for object storage
- sets up redis for caching
- sets up rabbitmq for messaging
- sets up mysql for database

## FluxCD

Flux is a tool that automatically ensures that the state of a cluster matches the config in git. It uses an operator in the cluster to trigger deployments inside Kubernetes, which means you don't need a separate CD tool. It monitors all relevant image repositories, detects new images, triggers deployments and updates the desired running configuration based on that (and a configurable policy).

since we use gitops and gitflow, we run two clusters one that runs on the main branch and one that runs on the develop branch. The main branch is the production cluster and the develop branch is the staging cluster. The staging cluster is used for testing changes before they are merged into the production cluster.

## [Kubernetes](/docs/Kubernetes.md)

Kubernetes is an open-source container-orchestration system for automating computer application deployment, scaling, and management.
