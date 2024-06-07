terraform {
  cloud {
    organization = "onewaysolution"

    workspaces {
      name = "orn-polaris-dev"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name_prefix

  tags = {
    environment = var.tag_environment
    project     = var.tag_project
  }
}

resource "azurerm_kubernetes_cluster" "k8s" {
  location            = azurerm_resource_group.rg.location
  name                = var.cluster_name
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix

  identity {
    type = var.system_assigned_identity_name
  }

  default_node_pool {
    name       = var.default_node_pool_name
    vm_size    = var.vm_size
    node_count = var.node_count
  }

  linux_profile {
    admin_username = var.linux_profile

    ssh_key {
      key_data = base64decode(var.ssh_public_key_data)
    }
  }

  network_profile {
    network_plugin    = var.network_profile_plugin
    load_balancer_sku = var.network_profile_load_balancer_sku
  }

  tags = {
    environment = var.tag_environment
    project     = var.tag_project
  }
}
