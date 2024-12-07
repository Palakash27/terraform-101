resource "azurerm_resource_group" "tfstateResourceGroup" {
  name     = "infra-tfstate-aakash-rg"
  location = "canadacentral"

  tags = {
    person = "Aakash"
  }
}

resource "azurerm_storage_account" "storageAccount" {
  name                     = "infrasaaakash"
  resource_group_name      = azurerm_resource_group.tfstateResourceGroup.name
  location                 = azurerm_resource_group.tfstateResourceGroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    person = "Aakash"
  }
}

resource "azurerm_storage_container" "tfstateContainer" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.storageAccount.id
  container_access_type = "private"
}