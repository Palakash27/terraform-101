variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "name" {
  description = "The name of the key vault"
}

variable "tags" {
  description = "A map of tags to add to the resource group"
  type        = map(string)
}

variable "location" {
  description = "The location of the resource group"
}