variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "lab"
}

variable "hub_vnet_cidr" {
  description = "Hub VNet address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
