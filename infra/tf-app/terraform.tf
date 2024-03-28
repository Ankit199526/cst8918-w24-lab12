terraform {
  required_version = ">= 0.13"
  backend "azurerm" {
    resource_group_name   = "<your-college-id>-githubactions-rg"
    storage_account_name  = "<your-college-id>githubactions"
    container_name        = "tfstate"
    key                   = "prod.app.tfstate"
  }
}

provider "azurerm" {
  features {}
}
