variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}


variable "str" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
    account_kind  = optional(string, "StorageV2")
    access_tier   = optional(string, "Hot")
    https_traffic_only_enabled = optional(bool, true)
    min_tls_version            = optional(string, "TLS1_2")
    tags = optional(map(string), {})

    network_rules = optional(object({
      default_action             = string
      ip_rules                   = optional(list(string), [])
      virtual_network_subnet_ids = optional(list(string), [])
      bypass                     = optional(list(string), ["AzureServices"])
    }))
  }))
}

