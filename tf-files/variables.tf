
variable "subscriptionId" {
  type = string
  description   = "Id of the subscription used for the deployment."
  sensitive = true
}

variable "resource_group_name" {
  default       = "Test-RG"
  description   = "Resource group name."
}

variable "resource_group_location" {
  default = "westeurope"
  description   = "Location of the resource group."
}

variable "default_tags" {
  description = "Tags for the resource group."
  type = map(string)
  default = {
        env : "staging"
        project : "project-name"
  }  
}