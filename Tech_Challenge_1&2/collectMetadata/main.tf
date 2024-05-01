data "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_name
  resource_group_name = var.resource_group_name
}

resource "local_file" "aks_metadata" {
  filename = var.metadata_file_path
  content  = jsonencode(data.azurerm_kubernetes_cluster.aks_cluster)
}

resource "local_file" "perticular_aks_metadata" {
  filename = var.perticular_aks_metadata
  content  = jsonencode(data.azurerm_kubernetes_cluster.aks_cluster[var.metadata_Key])
}

