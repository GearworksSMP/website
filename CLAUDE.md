# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is the Hugo-based website for Gearworks SMP (gearworkssmp.com), a Minecraft Create mod server community.

## Build Commands

```bash
# Run local development server
hugo server

# Build for production
hugo

# Build with drafts included
hugo server -D

# Build Docker image locally
docker build -t gearworkssmp-website .
```

## Architecture

- **Static site generator**: Hugo
- **Theme**: hugo-PaperMod (git submodule in `themes/`)
- **Configuration**: `hugo.yaml`

### Content Structure

- `content/` - Markdown content pages
  - `content/posts/` - Blog posts (announcements, updates, events)
  - Top-level `.md` files: join, rules, faq, live-maps, posts (list page)
- `layouts/partials/extend_head.html` - Custom head additions (service worker)
- `static/` - Static assets (images, service-worker.js)

### Deployment

Deploys to Kubernetes via GitHub Actions and ArgoCD:
- **Production** (`main` branch): www.gearworkssmp.com
- **Development** (`develop` branch): gearworkssmp-com.9m.se (behind Authentik auth)

The workflow builds a Docker image (Hugo + nginx), pushes to GHCR, and updates the k8s deployment manifest. ArgoCD syncs the changes to the cluster.

### Kubernetes Structure

- `k8s/prod/` - Production manifests (2 replicas)
- `k8s/dev/` - Development manifests (1 replica, Authentik middleware)

Infrastructure modules in `../iac/terraform/main.tf` create namespaces and GHCR pull secrets.
