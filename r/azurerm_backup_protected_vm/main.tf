terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_backup_protected_vm" "this" {
  backup_policy_id    = var.backup_policy_id
  recovery_vault_name = var.recovery_vault_name
  resource_group_name = var.resource_group_name
  source_vm_id        = var.source_vm_id
  tags                = var.tags

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

