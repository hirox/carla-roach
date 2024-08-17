#!/bin/bash
# shellcheck disable=SC1091
# shellcheck disable=SC2034
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE:-$0}")" || exit; pwd)

SCRIPT_SOURCED=1
. ${SCRIPT_DIR}/.common.sh

docker compose down
docker compose pull
docker compose up -d
