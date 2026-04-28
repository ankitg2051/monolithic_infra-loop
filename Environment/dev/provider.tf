terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.69.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9975b441-892c-4385-a4a6-e6201bf8df1e"
}