provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../"

  environment = "-example"
  label_order = ["name", "environment", ]

  name     = "rg"
  location = "North Europe"

  #resource lock
  resource_lock_enabled = true
  lock_level            = "CanNotDelete"
}