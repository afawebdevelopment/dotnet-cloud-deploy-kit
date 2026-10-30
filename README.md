# Deploy Any .NET API on a $5 VPS

Deploy ASP.NET Core APIs to production using Docker, Caddy and GitHub Actions.

## Features

- .NET 8 Sample API
- Docker Multi-Stage Build
- Docker Compose
- Caddy Reverse Proxy
- Health Endpoint
- Automated Deployments with GitHub Actions
- VPS Friendly
- Low Cost Hosting

## Architecture

```text
Internet
   ↓
Caddy
   ↓
ASP.NET Core API
```

## Quick Start

Build:

```bash
docker compose up -d
```

Verify:

```bash
curl http://localhost/health
```

Expected:

```json
{
  "status": "healthy"
}
```

## Deployment

Automatic deployments are configured through GitHub Actions.

Push changes:

```bash
git push origin main
```

GitHub Actions will:

1. Connect to your VPS.
2. Pull latest changes.
3. Rebuild containers.
4. Restart services.

## VPS Requirements

- Ubuntu 24.04
- 1 vCPU
- 1 GB RAM
- Docker
- Docker Compose

## Documentation

See:

- docs/VPS-Setup.md

## Included

- Dockerfile
- Docker Compose
- Caddy Configuration
- Deployment Script
- GitHub Actions Workflow
- Setup Documentationtest
test
test
test
test
test
