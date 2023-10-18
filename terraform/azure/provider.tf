terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.76.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "cloud-shell-storage-eastus"
    storage_account_name = "cs21003200260fb77bb"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}