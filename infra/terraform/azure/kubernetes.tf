resource "azurerm_kubernetes_cluster" "this" {
  name                = "scholarpath-${var.environment}"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  dns_prefix          = "scholarpath-${var.environment}"
  kubernetes_version  = var.aks_version

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  default_node_pool {
    name                 = "default"
    vm_size              = var.node_vm_size
    auto_scaling_enabled = true
    min_count            = var.node_min
    max_count            = var.node_max
    vnet_subnet_id       = azurerm_subnet.aks.id
    os_disk_size_gb      = 100
    node_labels          = { "scholarpath.io/workload" = "general" }
  }

  identity { type = "SystemAssigned" }

  network_profile {
    network_plugin    = "azure"
    network_policy    = "cilium"
    load_balancer_sku = "standard"
    service_cidr      = "10.101.0.0/16"
    dns_service_ip    = "10.101.0.10"
  }
}

# GPU pool for AI proctoring + adaptive learning inference (live classroom).
resource "azurerm_kubernetes_cluster_node_pool" "gpu" {
  name                  = "gpu"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id
  vm_size               = "Standard_NC6s_v3"
  auto_scaling_enabled  = true
  min_count             = 0
  max_count             = 8
  node_taints           = ["scholarpath.io/workload=live-classroom:NoSchedule"]
  node_labels           = { "scholarpath.io/workload" = "live-classroom" }
  vnet_subnet_id        = azurerm_subnet.aks.id
}
