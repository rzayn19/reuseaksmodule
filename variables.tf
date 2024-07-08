variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default = "demoaks"
}

variable "location" {
  description = "Azure region where the AKS cluster will be created"
  type        = string
  default = "canadacentral"
}

variable "log_analytics_workspace_name" {
    description = "Cluster Log analytics name"
    type = string
    default = "rdloganalytics"
  
}

variable "rbac_aad" {
  description = "Enable Azure AD integration for AKS"
  type        = bool
  default     = true
}

variable "resource_group_name" {
  description = "Name of the resource group ato deploy AKS cluster"
  type        = string
  default = "demoraks"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default = "dds"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "agents_size" {
  description = "Size of the VMs in the AKS node pool"
  type        = string
  default     = "Free"
}

variable "client_app_id" {
  description = "Client (application) ID of the service principal for AKS AAD integration"
  type        = string
  default = "xxxxxxxxxxxxxxxxxxxxxx"
}

variable "server_app_secret" {
  description = "Secret associated with the server (application) ID of the service principal for AKS AAD integration"
  type        = string
  default = "xxxxxxxxxxxxxxxxxxxxxxx"
}
