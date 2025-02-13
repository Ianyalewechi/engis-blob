# variables.tf

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "engisblob"  # Default storage account name
  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && can(regex("^[a-z0-9]*$", var.storage_account_name))
    error_message = "Storage account name must be between 3 and 24 characters and contain only lowercase letters and numbers."
  }
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "progis-engis"  # Resource group name
}

variable "location" {
  description = "The Azure region to create resources."
  type        = string
  default     = "East US"
}
