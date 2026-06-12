variable "project" {
  description = "Project name used in resource naming"
  type        = string
  default     = "autoheal"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Australia East"
}

variable "instance_count" {
  description = "Number of VMSS instances"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "VM size for web tier"
  type        = string
  default     = "Standard_B2ts_v2"
}

variable "admin_username" {
  description = "Linux admin username"
  type        = string
  default     = "azureuser"
}
