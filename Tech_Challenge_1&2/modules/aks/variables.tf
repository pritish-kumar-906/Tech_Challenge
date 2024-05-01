variable "location" {
  type = string
}
 variable "resource_group_name" {
  type = string
 }

variable "prefix" {
  type = string
}

variable "service_principal_name" {
  type = string
}

variable "client_id" {
  type = string
  sensitive = true
}
variable "client_secret" {
  type = string
  sensitive = true
}