#!/bin/bash

# echo "Initializing Terrform..."
# terraform init

# echo "Start Terraform plan..."
# terraform plan

# echo "Start Terraform apply..."
# terraform apply -auto-approve

# echo "Update kubeconfig..."
# aws eks update-kubeconfig --name $(aws eks list-clusters | jq -r '.[] |.[]')

# echo "Add Jenkins helm repo..."
# helm repo add jenkins https://charts.jenkins.io

# echo "Update helm repos..."
# helm repo update

# echo "Switch to Jenkins directory..."
# cd ../lab-helm-jenkins

echo "Deploy Jenkins..."
helm upgrade --install myjenkins -f values.yaml jenkins/jenkins
