output "aks_metadata_json" {
  value = jsonencode(data.azurerm_kubernetes_cluster.aks_cluster)
  description = "JSON-formatted metadata of the AKS instance"
}

output "location_data_key" {
    value = data.azurerm_kubernetes_cluster.aks_cluster.location
}
