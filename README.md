# recruitment-task
This is a task for recruitment


## Auto-healing Web Tier

## Goal

This project deploys an auto-healing web tier that can lose a single VM without downtime.

## Cloud choice

Azure was chosen because the solution maps cleanly to Azure Virtual Machine Scale Sets and Azure Load Balancer. VMSS provides a managed group of identical VMs and supports health monitoring and automatic repairs.

## Architecture

Internet → Public IP → Azure Load Balancer → VM Scale Set → NGINX instances

## Components

- Resource Group
- Virtual Network
- Subnet
- Public IP
- Standard Load Balancer
- Backend Pool
- HTTP Health Probe
- Linux VM Scale Set
- cloud-init NGINX bootstrap

## How to run

terraform init
terraform fmt
terraform validate
terraform plan -out=tfplan

Optional:

terraform apply tfplan

## Validate idempotency

Run:

terraform plan

Expected result:

No changes.

## Test self-healing

Delete one VMSS instance using Azure CLI. VMSS should replace it and keep desired capacity at 2.

## Assumptions

- Deployment region is Australia East.
- VM size is Standard_B2ts_v2.
- Desired capacity is 2 instances.
- Static NGINX page is sufficient.
- SSH is not exposed publicly.
- This is a demo environment.

## Estimated cost

Estimated monthly cost is intended to remain below AUD 20 using small B-series Linux VMs and minimal supporting infrastructure. Actual cost depends on region, runtime, disk size and Azure pricing.

## Cleanup

terraform destroy
