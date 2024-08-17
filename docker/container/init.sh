#!/bin/bash

# SIGTERM signal handler
terminate() {
  echo "Terminating script..."
  exit 0
}

# Set signal trap
trap terminate SIGTERM

while true; do
  sleep 1
done
