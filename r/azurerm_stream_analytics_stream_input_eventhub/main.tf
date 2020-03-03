terraform {
  required_providers {
    azurerm = ">= 2.0.0"
  }
}

resource "azurerm_stream_analytics_stream_input_eventhub" "this" {
  eventhub_consumer_group_name = var.eventhub_consumer_group_name
  eventhub_name                = var.eventhub_name
  name                         = var.name
  resource_group_name          = var.resource_group_name
  servicebus_namespace         = var.servicebus_namespace
  shared_access_policy_key     = var.shared_access_policy_key
  shared_access_policy_name    = var.shared_access_policy_name
  stream_analytics_job_name    = var.stream_analytics_job_name

  dynamic "serialization" {
    for_each = var.serialization
    content {
      encoding        = serialization.value["encoding"]
      field_delimiter = serialization.value["field_delimiter"]
      type            = serialization.value["type"]
    }
  }

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
