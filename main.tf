# main.tf

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name  # Storage account name
  resource_group_name       = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier              = "Standard"
  account_replication_type = "LRS"  # Locally redundant storage
}

resource "azurerm_storage_container" "example" {
  name                  = "progis-container"  # Updated container name
  storage_account_id    = azurerm_storage_account.example.id  # Using storage_account_id
  container_access_type = "private"  # Private access
}
