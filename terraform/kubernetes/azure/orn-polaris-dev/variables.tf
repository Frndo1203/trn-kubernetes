variable "resource_group_location" {
  type        = string
  default     = "eastus2"
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg-polaris"
}

variable "tag_environment" {
    type        = string
    default     = "development"
}

variable "tag_project" {
    type        = string
    default     = "orn-polaris"
}

variable "cluster_name" {
  type        = string
  default     = "orn-polaris-dev"
}

variable "dns_prefix" {
  type        = string
  default     = "dns-polaris"
}

variable "vm_size" {
  type        = string
  default     = "Standard_D8s_v3"
}

variable "node_count" {
  type        = number
  default     = 2
}

variable "system_assigned_identity_name" {
    type        = string
    default     = "SystemAssigned"
}

variable "default_node_pool_name" {
    type        = string
    default     = "agentpool"
}

variable "linux_profile" {
    type        = string
    default     = "ubuntu"
}

variable "network_profile_plugin" {
    type        = string
    default     = "kubenet"
}

variable "network_profile_load_balancer_sku" {
    type        = string
    default     = "standard"
}

variable "client_id" {
  description = "client id"
  type        = string
}

variable "client_secret" {
  description = "client secret"
  type        = string
}

variable "tenant_id" {
  description = "tenant id"
  type        = string
}

variable "subscription_id" {
  description = "subscription id"
  type        = string
}

variable "msi_id" {
  type        = string
  default     = null
}

variable "ssh_public_key_data" {
  type        = string
  default     = null
}
