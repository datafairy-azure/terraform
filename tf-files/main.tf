terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = var.subscriptionId

}

resource "azurerm_resource_group" "name" {
    name = var.resource_group_name
    location = var.resource_group_location
    tags = var.default_tags
}
