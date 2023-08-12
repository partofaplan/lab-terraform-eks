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

# echo "Deploy Jenkins..."
# helm upgrade --install myjenkins -f values.yaml jenkins/jenkins

echo "Kick off the Github Action pipeline for building the ECR..."
curl --request POST \
  --url 'https://api.github.com/repos/partofaplan/weathervane-py/actions/workflows/docker-image.yml/dispatches' \
  --header 'Authorization: token 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' \
  --header 'X-GitHub-Api-Version: 2022-11-28' \
  --data '{"ref":"main"}'

echo "Deploy weather app to EKS..."
helm upgrade --install weathervane ../weathervane-py/weathervane-py-charts/weathervane-py/