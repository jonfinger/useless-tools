#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
SOURCE_DIR="${REPO_ROOT}/web"
TARGET_DIR="${1:-/Users/jaef/things/jonfinger.com/useless-tools}"

if [[ ! -d "${SOURCE_DIR}" ]]; then
  echo "Source directory not found: ${SOURCE_DIR}" >&2
  exit 1
fi

mkdir -p "${TARGET_DIR}"
rsync -av --delete "${SOURCE_DIR}/" "${TARGET_DIR}/"

echo "Synced Useless Tools from ${SOURCE_DIR} to ${TARGET_DIR}"
