# clusty-dusty
Kubernetes Homelab 2.0, now with more automation

## Current Issues
optiplex2 pods can't connect to opitplex1 pods, seems like an issue with CoreDNS
Flux bootstrap is misconfigured, should point to flux/flux-system directory and this should contain meta for charts

## Goals
- High level: Create an automated workflow for installing kubernetes to Ubuntu servers and deploying infrastructure applications into the cluster
- Use Ansible to prepare nodes and install Kubernetes as well as FluxCD
- Have FluxCD install Helm Releases for the rest of the infrastructure applications from a Git repo (GitOps automation)
  - Image/Helm registry (Artifactory?)
  - Monitoring stack
  - MetalLB
  - Storage Class
  - Jenkins
  - cert-manager
- Add PR validation steps for relevant code
  - Linting
  - Testing

## Cluster Architecture
- RKE2
  - Canal
  - Containerd
- MetalLB
- Longhorn

## Project Requirements
- Ansible
  - SSH-key access to remote hosts configured in ~/.ssh/config
  - Remote hosts configured to not require passwords for root
- Vagrant (for testing only)
  - Configure access to test machines in ~/.ssh/config using `vagrant ssh-config` output
- GitHub user with repo access
  - Personal Access Token set as GITHUB_TOKEN env variable

## FluxCD Flow
- Run Flux bootstrap command to start flux and point it at this repo
- Create a Kustomization resource which consumes the `kustomization.yaml` file in `/flux/charts/meta` in this repo
- This file installs the `HelmRelease` resources which then reconcile all of the charts in `flux/charts`

