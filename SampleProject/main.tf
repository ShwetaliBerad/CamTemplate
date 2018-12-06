#####################################################################
##
##      Created 12/6/18 by admin. for SampleProject
##
#####################################################################

## REFERENCE {"vsphere_network":{"type": "vsphere_reference_network"}}

terraform {
  required_version = "> 0.8.0"
}

provider "vsphere" {
  user           = "${var.user}"
  password       = "${var.password}"
  vsphere_server = "${var.vsphere_server}"

  allow_unverified_ssl = "${var.allow_unverified_ssl}"
  version = "~> 1.2"
}


data "vsphere_virtual_machine" "UbuntuVM_template" {
  name          = "${var.UbuntuVM_template_name}"
  datacenter_id = "${data.vsphere_datacenter.UbuntuVM_datacenter.id}"
}

data "vsphere_datacenter" "UbuntuVM_datacenter" {
  name = "${var.UbuntuVM_datacenter_name}"
}

data "vsphere_datastore" "UbuntuVM_datastore" {
  name          = "${var.UbuntuVM_datastore_name}"
  datacenter_id = "${data.vsphere_datacenter.UbuntuVM_datacenter.id}"
}

data "vsphere_network" "network" {
  name          = "${var.network_network_name}"
  datacenter_id = "${data.vsphere_datacenter.UbuntuVM_datacenter.id}"
}

resource "vsphere_virtual_machine" "UbuntuVM" {
  name          = "${var.UbuntuVM_name}"
  datastore_id  = "${data.vsphere_datastore.UbuntuVM_datastore.id}"
  num_cpus      = "${var.UbuntuVM_number_of_vcpu}"
  memory        = "${var.UbuntuVM_memory}"
  guest_id = "${data.vsphere_virtual_machine.UbuntuVM_template.guest_id}"
  resource_pool_id = "${var.UbuntuVM_resource_pool}"
  network_interface {
    network_id = "${data.vsphere_network.network.id}"
  }
  clone {
    template_uuid = "${data.vsphere_virtual_machine.UbuntuVM_template.id}"
  }
  disk {
    name = "${var.UbuntuVM_disk_name}"
    size = "${var.UbuntuVM_disk_size}"
  }
}