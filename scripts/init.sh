#!/bin/bash
set -e

ENVIRONMENT=$1
if [ -z "$ENVIRONMENT" ]; then
  echo "Usage: ./scripts/init.sh <environment>"
  exit 1
fi

cd environments/$ENVIRONMENT
terraform init -backend-config=backend.hcl
