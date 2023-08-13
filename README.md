# Create an EKS Cluster using Terraform with Jenkins and Weathervane app

## Clone these repos as well
https://github.com/partofaplan/weathervane-py
https://github.com/partofaplan/lab-helm-jenkins

## AWS Authentication
1. Login using AWS CLI.
2. Use `aws configure` to configure your access key and secret access key.

## Run the automated script
1. Run ./start.sh in a Linux environment to start the automated build of the EKS cluster and deploy Jenkins and the Weathervane app to the cluster.

## Manual Terraform Commands
1. Run `terraform plan` to ensure the Terraform is going to build the way you want.
2. Run `terraform apply` to just apply the Terraform code.
