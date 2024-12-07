variable "name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location of the resource group"
}

variable "tags" {
  description = "A map of tags to add to the resource group"
  type        = map(string)
}