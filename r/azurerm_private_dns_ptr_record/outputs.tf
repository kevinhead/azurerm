output "id" {
  description = "returns a string"
  value       = azurerm_private_dns_ptr_record.this.id
}

output "this" {
  value = azurerm_private_dns_ptr_record.this
}

