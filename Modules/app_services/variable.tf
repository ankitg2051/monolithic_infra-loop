variable "aps" {
    type = map(object({
    name                = string   # service plan name
    web_app_name        = string   # web app name
    location            = string
    resource_group_name = string
    dotnet_version      = string
    }))  
}