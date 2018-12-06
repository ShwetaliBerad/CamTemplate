#####################################################################
##
##      Created 12/6/18 by admin. for SampleProject
##
#####################################################################

variable "user" {
  type = "string"
  description = "Generated"
}

variable "password" {
  type = "string"
  description = "Generated"
}

variable "vsphere_server" {
  type = "string"
  description = "Generated"
}

variable "allow_unverified_ssl" {
  type = "string"
  description = "Generated"
}

variable "UbuntuVM_name" {
  type = "string"
  description = "Virtual machine name for UbuntuVM"
}

variable "UbuntuVM_number_of_vcpu" {
  type = "string"
  description = "Number of virtual cpu's."
}

variable "UbuntuVM_memory" {
  type = "string"
  description = "Memory allocation."
}

variable "UbuntuVM_disk_name" {
  type = "string"
  description = "The name of the disk. Forces a new disk if changed. This should only be a longer path if attaching an external disk."
}

variable "UbuntuVM_disk_size" {
  type = "string"
  description = "The size of the disk, in GiB."
}

variable "UbuntuVM_template_name" {
  type = "string"
  description = "Generated"
}

variable "UbuntuVM_datacenter_name" {
  type = "string"
  description = "Generated"
}

variable "UbuntuVM_datastore_name" {
  type = "string"
  description = "Generated"
}

variable "UbuntuVM_resource_pool" {
  type = "string"
  description = "Resource pool."
}

variable "network_network_name" {
  type = "string"
  description = "Generated"
}

