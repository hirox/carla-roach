#!/bin/bash
# shellcheck disable=SC2034
# Check if this script is being sourced or executed
if [ -z "$SCRIPT_SOURCED" ]; then
    echo "This script is intended to be sourced, not executed directly."
    exit 1
fi

BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info() {
    echo -e "${BLUE}INFO: $1${NC}"
}

warn() {
    echo -e "${YELLOW}WARN: $1${NC}" >&2
}

error() {
    echo -e "${RED}ERROR: $1${NC}" >&2
}

DOCKER_UID=$(id -u)
export DOCKER_UID

DOCKER_GID=$(id -g)
export DOCKER_GID
