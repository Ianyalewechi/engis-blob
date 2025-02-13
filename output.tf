# outputs.tf

output "storage_account_name" {
  value = azurerm_storage_account.example.name
}

output "storage_container_name" {
  value = azurerm_storage_container.example.name
}

output "storage_account_primary_connection_string" {
  value     = azurerm_storage_account.example.primary_connection_string
  sensitive = true  # Mark as sensitive to prevent accidental exposure
}

output "storage_account_primary_access_key" {
  value     = azurerm_storage_account.example.primary_access_key
  sensitive = true  # Mark as sensitive to prevent accidental exposure
}
