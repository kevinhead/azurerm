module "azurerm_cosmosdb_mongo_database" {
  source = "./azurerm/r/azurerm_cosmosdb_mongo_database"

  account_name        = null
  name                = null
  resource_group_name = null
  throughput          = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
