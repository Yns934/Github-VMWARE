data "vsphere_datacenter" "dc" {
  name = "Datacenter-1"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "Cluster-1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_datastore" "datastore" {
  name          = "Datastore-1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = "VM Network"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template" {
  name          = "Ubuntu-Template"
  datacenter_id = data.vsphere_datacenter.dc.id
}
