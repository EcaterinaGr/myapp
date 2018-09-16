provider "azurerm" {
  version = "~> 1.13.0"
}

terraform {
  required_version = "0.11.8"

  backend "azurerm" {
    resource_group_name = "training-common-rg-tf"
    storage_account_name = "trainingtfstates"
    container_name       = "<machine_num>"
    key                  = "<machine_num>.terraform.tfstate"
  }
}