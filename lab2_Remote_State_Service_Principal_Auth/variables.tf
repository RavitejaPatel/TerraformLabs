variable "storage_account_name" {
  description = "Name of the existing Azure Storage Account used for Terraform state backend."
  type        = string
}

variable "tfstate_container_name" {
  description = "Name of the existing blob container used to store the Terraform state file."
  type        = string
}

variable "azure_state_resource_group" {
  description = "Resource group where the existing storage account for Terraform state is located."
  type        = string
}

variable "vnet_name" {
  description = "Name of the lab2 virtual network."
  type        = string
  default     = "lab2vnet"
}

variable "vnet_address_space" {
  description = "Address space for the lab2 virtual network."
  type        = list(string)
  default     = ["10.1.0.0/16"]
}
