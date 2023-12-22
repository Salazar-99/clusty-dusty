# clusty-dusty
Kubernetes Homelab 2.0, now with more automation

## Current Issues

## Goals
- High level: Create an automated workflow for installing kubernetes to Ubuntu servers and deploying infrastructure applications into the cluster
- Have FluxCD install Helm Releases for the rest of the infrastructure applications from this repo (GitOps automation)
  - Artifactory
  - kube-prometheus monitoring stack
  - Jenkins
  - cert-manager
- Add PR validation steps for relevant code
  - Linting
  - Testing

## Cluster Architecture
- RKE2
  - Canal (Calico + Flannel)
  - Containerd runtime
- MetalLB for loadbalancing
- Longhorn for Storage Class
- Artifactory for Helm and Docker repositories
- Gitea for source code repositories
- Jenkins for CI/CD automation
- Kube-Prometheus-Stack for monitoring

## Project Requirements
- Ansible
  - SSH-key access to remote hosts configured in ~/.ssh/config
  - Remote hosts configured to not require passwords for root
- Vagrant (for testing only)
  - Configure access to test machines in ~/.ssh/config using `vagrant ssh-config` output
- GitHub user with repo access
  - Personal Access Token set as GITHUB_TOKEN env variable on orchestration machine

## FluxCD Flow
- Run Flux bootstrap task
- Flux configures itself by looking in the `flux/flux-system/flux-system` directory
- Flux automatically detects and applies the resources in the `flux/flux-system/helm` which kickoff installation of the Helm charts in `flux/charts`
- To add a new charts, add it's source to `flux/charts` and add a corresponding `HelmRelease` resource in `flux/flux-system/helm`

