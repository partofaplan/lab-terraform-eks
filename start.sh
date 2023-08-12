#!/bin/bash

echo "Initializing Terrform..."
terraform init

echo "Start Terraform plan..."
terraform plan

echo "Start Terraform apply..."
terraform apply -auto-approve
