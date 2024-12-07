locals {
  resource_group_name = "infra-aakash-rg"
  location = "canadacentral"

  tags = {
    environment = "dev"
    owner = "aakash"
  }
}

module "resource_group" {
  source = "./resource_group"
  name = local.resource_group_name
  location = local.location

  tags = local.tags
}

module "key_vault" {
  source = "./key_vault"
  name = "infra-aakash-kv"
  resource_group_name = local.resource_group_name
  location = local.location

  tags = local.tags
}