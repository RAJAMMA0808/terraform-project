#!/bin/bash
set -e

ENVIRONMENT=$1
if [ -z "$ENVIRONMENT" ]; then
  echo "Usage: ./scripts/destroy.sh <environment>"
  exit 1
fi

cd environments/$ENVIRONMENT
terraform destroy -var-file=vars.tfvars -auto-approve
