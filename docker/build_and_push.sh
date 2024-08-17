#!/bin/bash
# shellcheck disable=SC1091
# shellcheck disable=SC2034
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE:-$0}")" || exit; pwd)

SCRIPT_SOURCED=1
. ${SCRIPT_DIR}/.common.sh

TARGET="suzuca/omnipotent-banana:latest"

docker compose build || exit 1
docker push $TARGET || exit 1
