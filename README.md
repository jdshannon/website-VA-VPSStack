# website-VA-VPSStack

Docker-based infrastructure for hosting multiple WordPress websites
and an OpenClaw virtual assistant on a single VPS.

## Stack Overview
- Caddy reverse proxy (TLS + routing)
- Classic WordPress per-domain stacks
- OpenClaw VA (isolated)
- GitHub push-to-deploy automation

## Philosophy
- GitHub is the source of code
- VPS pulls and runs code
- Secrets live only on the VPS
- Containers are disposable; volumes are not

This repository intentionally contains no production secrets.
