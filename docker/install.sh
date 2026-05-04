#!/usr/bin/env bash
set -euo pipefail

BUILDER_NAME="${1:-ci-builder1}"

softwareupdate --install-rosetta

echo "Inspecting Docker builder environment..."

if ! command -v docker &>/dev/null; then
  echo "Docker not found"
  exit 1
fi

if ! docker buildx version &>/dev/null; then
  echo "Buildx not available. Please enable Docker BuildKit."
  exit 1
fi

docker info | grep "Storage Driver" || true

if docker buildx inspect "${BUILDER_NAME}" >/dev/null 2>&1; then
  echo "Using existing builder: ${BUILDER_NAME}"
  docker buildx use "${BUILDER_NAME}"
else
  echo "Creating new builder: ${BUILDER_NAME}"
  docker buildx create --use --name "${BUILDER_NAME}" --driver docker-container
fi

echo "Bootstrapping builder..."
docker buildx inspect --bootstrap || true

echo "Buildx builder ready!"
