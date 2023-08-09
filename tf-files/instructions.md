# Getting started with Terraform

## 1. Create a prioject

- create a main.tf file or copy from somewhere
- terraform init
- update the main.tf file with the resource(s) 
- add a variables.tf file if needed
- don't worry about backends just yet

## 2. Validate and plan
- terraform validate
- terraform plan -out=plan.out (have a subscription and maybe a resource group ready)
- check the proposed changes 

## End of demo

## 3. Deploy resources
- terraform apply plan.out (for those deploying the resources)

## 4. Clean up resources
- terraform plan -destroy [this uses the state file]
- terraform apply -destroy [this uses the state file]