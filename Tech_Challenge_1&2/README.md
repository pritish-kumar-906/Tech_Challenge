Use below command to apply terraform scripts to a specific environment.

terraform -chdir=./environments/dev or test or prod/ init
terraform -chdir=./environments/dev or test or prod/ plan -out=plan.out
terraform -chdir=./environments/dev or test or prod/ apply


Use below command to retrieve metadata of a perticular instance in azure.

terraform -chdir=./collectMetadata/ init
terraform -chdir=./collectMetadata/ plan
terraform -chdir=./collectMetadata/ apply -var "metadata_key=desired_metadata_key"

List of metadata keys for aks instance - 
* id: The resource ID of the AKS cluster.
* name: The name of the AKS cluster.
* resource_group_name: The resource group name in which the AKS cluster is deployed.
* location: The location (region) of the AKS cluster.
* dns_prefix: The DNS prefix used for the AKS cluster.
* kubernetes_version: The version of Kubernetes running on the AKS cluster.
* fqdn: The fully qualified domain name of the AKS cluster.
* api_server_authorized_ip_ranges: List of authorized IP ranges for the AKS cluster's API server.
* default_node_pool: Information about the default node pool of the AKS cluster, including attributes such as name, node_count, vm_size, and more.
* identity: Identity details of the AKS cluster, such as type and identity_ids (if applicable).
* linux_profile: Details about the Linux profile of the AKS cluster, including admin_username and ssh_key.
* windows_profile: Details about the Windows profile of the AKS cluster, including admin_username and admin_password.
* network_profile: Details about the network profile of the AKS cluster, including attributes such as network_plugin, dns_service_ip, service_cidr, and more.
* service_principal: Information about the service principal used by the AKS cluster.
* tags: Tags associated with the AKS cluster.
* add_ons: Add-ons enabled for the AKS cluster.
* enable_rbac: Whether RBAC is enabled on the AKS cluster.
* current_node_count: The current number of nodes in the AKS cluster.
* node_resource_group: The resource group that contains the nodes of the AKS cluster.
* network_profile_load_balancer_sku: The SKU of the load balancer used by the AKS cluster.