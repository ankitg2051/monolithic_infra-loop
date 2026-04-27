resource "azurerm_storage_account" "store" {
  for_each                   = var.str
  name                       = each.value.name
  location                   = each.value.location
  resource_group_name        = each.value.resource_group_name
  account_tier               = each.value.account_tier
  account_replication_type   = each.value.account_replication_type
  account_kind               = each.value.account_kind
  access_tier                = each.value.access_tier
  https_traffic_only_enabled = each.value.https_traffic_only_enabled
  min_tls_version            = each.value.min_tls_version
  tags                       = each.value.tags

  dynamic "network_rules" {
    for_each = each.value.network_rules == null ? [] : [each.value.network_rules] # if for_each = each.value.network_rule == null 
    content {                                                                     # then empty resource bnega, skip nai hoga
      default_action             = network_rules.value.default_action             # also [each.value.network_rule] list me isliye hai kyu ki
      ip_rules                   = network_rules.value.ip_rules                   # terraform list ya map hi accept krega yha object nai for_each k liye  
      virtual_network_subnet_ids = network_rules.value.virtual_network_subnet_ids
      bypass                     = network_rules.value.bypass
    }
  }

}
