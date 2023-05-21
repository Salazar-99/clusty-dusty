# clusty-dusty
Kubernetes Homelab 2.0, now with more automation

## Goals
- High level: Create an automated workflow for installing kubernetes to Ubuntu servers and deploying infrastructure applications into the cluster
- Use Ansible to prepare nodes and install Kubernetes as well as FluxCD
- Have FluxCD install Helm Releases for the rest of the infrastructure applications from a Git repo (GitOps automation)
  - Image registry
  - Helm registry?
  - Monitoring stack
  - CNI?
  - MetalLB?
  - Ingress Controller
  - Storage Class
