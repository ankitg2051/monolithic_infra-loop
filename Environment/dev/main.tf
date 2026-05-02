module "resources" {
  source = "../../Modules/Resource_group"
  rgs = var.rgs
}
module "storage_acc" {
  source     = "../../Modules/Storage_account"
  str        = var.str
  depends_on = [module.resources]
}


module "app_services" {
  source = "../../Modules/app_services"
  aps    = var.aps
  depends_on = [module.resources]
}
