# Datasource to get Latest Azure AKS Version
data "azurerm_kubernetes_service_versions" "current" {
  location = var.location
  include_preview = false  
}
 

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                  = "aks-cluster-01"
  location              = var.location
  resource_group_name   = var.resource_group_name
  dns_prefix            = var.prefix          
  kubernetes_version    = data.azurerm_kubernetes_service_versions.current.latest_version
  
  default_node_pool {
    name       = "defaultpool"
    vm_size    = "Standard_DS2_v2"
    zones   = [1, 2, 3]
    enable_auto_scaling  = true
    max_count            = 3
    min_count            = 1
    os_disk_size_gb      = 30
    type                 = "VirtualMachineScaleSets"
    node_labels = {
      "nodepool-type"    = "default"
      "nodepools"       = "linux"
     } 

  }

  network_profile {
      network_plugin = "kubenet"
      load_balancer_sku = "standard"
  }

    
  }