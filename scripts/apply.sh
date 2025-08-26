#!/bin/bash
set -e

ENVIRONMENT=$1
if [ -z "$ENVIRONMENT" ]; then
  echo "Usage: ./scripts/apply.sh <environment>"
  exit 1
fi

cd environments/$ENVIRONMENT
terraform apply -var-file=vars.tfvars -auto-approve
