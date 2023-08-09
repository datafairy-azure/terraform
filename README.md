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

## 3. Deploy resources
- terraform apply plan.out (for those deploying the resources)

## 4. Clean up resources
- terraform plan -destroy [this uses the state file]
- terraform apply -destroy [this uses the state file]

# Deploying to Azure 

## Deploying to Azure with Azure DevOps pipelines (azure-pipeline.yml)
- in pipelines choose azure-pipeline.yml 
- azure-pipelines.yml will run terraform init, plan, apply and destroy
- you can remove the destroy task to only deploy your resources

## Deploying to Azure with Azure DevOps pipelines (azure-pipeline-with-approval.yml)
- in pipelines choose azure-pipeline-with-approval.yml 
- azure-pipelines-with-approval.yml will run terraform init and plan then break for a review step
- during this review step you can check the plan for the deployment
- once your ready to deploy, approve this step
- next it will run init and apply

