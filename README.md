<div  align="center">
  <h1 size="7">
    Helix AI IaC
  </h1>
</div>
<br/>
<br/>
<div>
  <div align="center">
      <a href="https://helixaibot.com/" target="blank">
          <img
              src="https://github.com/SinLess-Games-LLC/Helix/blob/master/DOCS/images/logos/Favicon-01.png?raw=true"
              width="350"
              alt="Helix Ai Logo"
          />
      </a>
  </div>
  <div align="center">
        <img alt="made with Love by SinLess Games LLC" src="https://img.shields.io/badge/Made%20with%20%E2%9D%A4%EF%B8%8F%20by-SinLess%20Games%20LLC-green.svg?style=for-the-badge)" />
  </div>
  <div align="center">
    <a href="https://helixaibot.com" target="blank">
      <img alt="Website" src="https://img.shields.io/website?url=https%3A%2F%2Fhelixaibot.com" />
    </a>
  <div>
</div>
<br/>

---

<div  align="center">
  <h1 size="7">
    Badges
  </h1>
</div>

![GitHub last commit](https://img.shields.io/github/last-commit/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)
![Commits per month](https://img.shields.io/github/commit-activity/m/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)
![GitHub contributors](https://img.shields.io/github/contributors/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)
![GitHub watchers](https://img.shields.io/github/watchers/SinLess-Games-LLC/Helix-Ai-IaC?style=for-the-badge)



---

## Description

This repository contains the IaC for the Helix Ai project. It is a monorepo containing all the infrastructure code for the project.
this repo utilizes the gitflow workflow. The master branch is protected and can only be merged into via a pull request. The develop branch is the default branch and is the branch that all feature branches are created from. Feature branches are created from the develop branch and are named after the feature they are implementing. Feature branches are merged into the develop branch via a pull request. The develop branch is merged into the master branch via a pull request. The master branch is the branch that is deployed to.

This repo does the following with a tasks:

- [x] Builds a packer VM template in proxmox
- [ ] Creates a VM for each host in the `/bootstrap/vars/config.yaml` file
- [ ] Prepares the VMs with the following:
  - [ ] sets the hostname
  - [ ] sets the timezone
  - [ ] sets the locale
  - [ ] sets the keyboard layout
  - [ ] sets the ssh keys
  - [ ] sets passwordless sudo
- [ ] Prepares for the installation of the [Kubernetes cluster](/docs/Kubernetes.md)
- [ ] Installs the [Kubernetes cluster](/docs/Kubernetes.md)
- [ ] Sets up FluxCD for GitOps
- [ ] sets up consul for service discovery
- [ ] sets up vault for secrets management
- [ ] sets up prometheus for monitoring
- [ ] sets up grafana for monitoring
- [ ] sets up loki for log aggregation
- [ ] sets up tempo for tracing
- [ ] sets up jaeger for tracing
- [ ] sets up elasticsearch for log aggregation
- [ ] sets up kibana for data visualization
- [ ] sets up beats for log shipping
- [ ] sets up logstash for log shipping
- [ ] sets up redis for caching
- [ ] sets up minio for object storage
- [ ] sets up redis for caching
- [ ] sets up rabbitmq for messaging
- [ ] sets up mysql for database

## FluxCD

Flux is a tool that automatically ensures that the state of a cluster matches the config in git. It uses an operator in the cluster to trigger deployments inside Kubernetes, which means you don't need a separate CD tool. It monitors all relevant image repositories, detects new images, triggers deployments and updates the desired running configuration based on that (and a configurable policy).

since we use gitops and gitflow, we run two clusters one that runs on the main branch and one that runs on the develop branch. The main branch is the production cluster and the develop branch is the staging cluster. The staging cluster is used for testing changes before they are merged into the production cluster.

## [Kubernetes](/docs/Kubernetes.md)

Kubernetes is an open-source container-orchestration system for automating computer application deployment, scaling, and management.
