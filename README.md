# Amazon Q EKS Workshop - Agentic Experience

This repository contains Terraform configurations for deploying Amazon EKS clusters with auto mode.

## Quick Start

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

## Configuration

- **Default Region**: us-west-2
- **EKS Version**: 1.32
- **Node Pools**: general-purpose (auto mode)
- **VPC CIDR**: 10.0.0.0/16

## Files

- `terraform/` - EKS cluster Terraform configuration
- `.amazonq/` - Amazon Q configuration and rules

## Connect to Cluster

After deployment, configure kubectl:

```bash
aws eks --region us-west-2 update-kubeconfig --name eks-cluster
```
