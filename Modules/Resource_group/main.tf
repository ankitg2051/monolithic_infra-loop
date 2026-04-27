resource "azurerm_resource_group" "rgs" {
  for_each   = var.rgs
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed_by
  tags       = each.value.tags
  timeouts {
    create = try(each.value.timeouts.create, null)   # try is a function using syntax try(A,B).
    delete = try(each.value.timeouts.delete, null)  # if A is there then use it, otherwise use default
    read   = try(each.value.timeouts.read, null)    # here it will try to get the value under timeouts
    update = try(each.value.timeouts.update, null)  #  and if not found, it will use default
  }
}
