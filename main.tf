provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rd" {
  name     = var.resource_group_name
  location = var.location
}

module "aks_cluster" {
  source              = "Azure/aks/azurerm"
  version             = "7.5.0"
  cluster_name        = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  prefix          = var.dns_prefix
  cluster_log_analytics_workspace_name = var.log_analytics_workspace_name
  role_based_access_control_enabled = var.rbac_aad
  rbac_aad_managed                 = true
  client_id       = var.client_app_id
  client_secret   = var.server_app_secret
  sku_tier = var.agents_size

  depends_on = [ azurerm_resource_group.rd ]
}
