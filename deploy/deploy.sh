#!/bin/bash
set -e

TARGET=$1

if [ -z "$TARGET" ]; then
  echo "Usage: deploy.sh [all|domain]"
  exit 1
fi

ROOT="/srv/website-VA-VPSStack"

cd "$ROOT"
git pull origin main

if [ "$TARGET" = "all" ]; then
  docker compose -f proxy/docker-compose.yml up -d
  for site in sites/*; do
    docker compose -f "$site/docker-compose.yml" up -d
  done
else
  docker compose -f "sites/$TARGET/docker-compose.yml" up -d
fi

