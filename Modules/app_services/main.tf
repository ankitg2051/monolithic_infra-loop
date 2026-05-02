resource "azurerm_service_plan" "pla" {
  for_each = var.aps

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  os_type  = "Linux"
  sku_name = "B1"
}

resource "azurerm_linux_web_app" "app" {
  for_each = var.aps

  name                = each.value.web_app_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  service_plan_id     = azurerm_service_plan.pla[each.key].id

  site_config {
    application_stack {
      dotnet_version = each.value.dotnet_version
    }
  }
}