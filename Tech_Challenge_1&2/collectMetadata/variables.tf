variable "aks_name" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}

variable "metadata_file_path" {
  type        = string
  description = "Path to the local file where the metadata will be stored"
  default     = "aks_metadata.json"
}

variable "perticular_aks_metadata" {
  type        = string
  description = "Path to the local file where the metadata will be stored"
  default     = "aks_metadata_location.json"
}

variable "metadata_Key" {
  type        = string
}
