resource "azurerm_storage_account" "content" {
  name                     = "scholarpath${var.environment}content"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "ZRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true
  min_tls_version          = "TLS1_2"
  blob_properties {
    versioning_enabled = true
    delete_retention_policy { days = 30 }
  }
}

resource "azurerm_storage_container" "content" {
  name                  = "content"
  storage_account_id    = azurerm_storage_account.content.id
  container_access_type = "private"
}

resource "azurerm_storage_account" "proctoring" {
  name                     = "scholarpath${var.environment}proct"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
  # FERPA + COPPA: raw proctoring video lifecycle-managed (deleted within 30 days).
  blob_properties { delete_retention_policy { days = 30 } }
}
