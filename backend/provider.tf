# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.13.0"
    }
  }

  required_version = ">= 1.10.1"
}

provider "azurerm" {
  features {}
}