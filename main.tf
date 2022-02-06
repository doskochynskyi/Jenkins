# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  
 #   backend "azurerm" {
 #   resource_group_name  = "RG-Jenkins"
 #   storage_account_name = "saterraformst"
 #   container_name       = "conttfstate"
 #   key                  = "terraform.tfstate"
 #   use_msi              = true
 #   subscription_id      = "91c428c6-87f0-42a0-970a-bfc0d94cb6af"
 #   tenant_id            = "b04ac3d3-fff5-4444-8d9e-b3b7d67cf78e"
 # }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  
    subscription_id      = "91c428c6-87f0-42a0-970a-bfc0d94cb6af"
    tenant_id            = "b04ac3d3-fff5-4444-8d9e-b3b7d67cf78e"
}


resource "azurerm_resource_group" "rg" {
  name     = "RGmanagedIdentity"
  location = "eastus"
}
