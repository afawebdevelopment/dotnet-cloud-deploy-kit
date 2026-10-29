# VPS Setup Guide

## Requirements

- Ubuntu 24.04
- 1 vCPU
- 1 GB RAM
- Public IP
- Domain name (optional)

## Initial Server Setup

```bash
sudo bash scripts/install-server.sh
```

## Clone Repository

```bash
git clone https://github.com/your-user/dotnet-cloud-deploy-kit.git
cd dotnet-cloud-deploy-kit/docker
```

## Start Application

```bash
docker compose up -d
```

## Verify Deployment

```bash
curl http://localhost/health
```

Expected response:

```json
{
  "status": "healthy"
}
```

## Automatic Deployments

Configure GitHub Secrets:

- VPS_HOST
- VPS_USER
- VPS_SSH_KEY

Every push to the main branch will trigger deployment automatically.