# --------------------------------------------
# This variable are expected to be set in the environment like this: export TF_VAR_client_id="xxxxx"
# or passed from var file like: variable.pkrvars.hcl
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "subscription_id" {}
# --------------------------------------------
variable "image_offer" {
    type = string
    default = "0001-com-ubuntu-server-jammy" # Ubuntu 22.04.2 LTS
}
variable "image_publisher" {
    type = string
    default = "canonical"
}
variable "image_sku" {
    type = string
    default = "22_04-lts"
}

variable "location" {
    type = string
    default = "japaneast"
}
variable "managed_image_name" {
    type = string
    default = "isucon-13-ubuntu-22-04-2-lts"
}
variable "managed_image_resource_group_name" {
    type = string
}
variable "os_type" {
    type = string
    default = "Linux"
}
variable "vm_size" {
    type = string
    default = "Standard_D2s_v4"
}

#destination sig
variable "gallery_name" {}
variable "image_name" {}
variable "image_version" {}
variable "replication_regions" {}
variable "resource_group" {}
#variable "subscription" {}
#variable "storage_account_type" {}
variable "shared_gallery_image_version_exclude_from_latest" {
  default = null
}
