# clusty-dusty
Kubernetes Homelab 2.0, now with more automation

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

## Project Requirements
- Ansible
  - SSH-key access to remote hosts configured in ~/.ssh/config
- Vagrant (for testing only)
  - Configure access to test machines in ~/.ssh/config using `vagrant ssh-config` output
- GitHub user with repo access
  - ssh key

