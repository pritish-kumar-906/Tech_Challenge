provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

terraform {
  backend "azurerm" {
    resource_group_name  = var.rg1
    storage_account_name = var.saname
    container_name       = "tfstate"
    key                  = "test.terraform.tfstate"
    access_key           = var.backend_storage_account_access_key
  }
}

module "resource_group" {
  source = "./modules/resourceGroup"
  resource_group_name = var.rgname
  location            = var.location
}

#create Azure Kubernetes Service
module "aks" {
  source                 = "./modules/aks/"
  location               = var.location
  resource_group_name    = var.rgname
  dns_prefix = var.prefix
  depends_on = [
    module.resource_group
  ]

}