terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">=3.0"
    }

    time = {
      source  = "hashicorp/time"
      version = ">=0.9.1"
    }
  }
}

provider "azurerm" {
  features {}

  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
  subscription_id = var.subscription_id
}