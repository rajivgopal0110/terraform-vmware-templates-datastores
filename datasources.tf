data "vsphere_datacenter" "datacenter" {
  name = var.datacenter
}

data "vsphere_datastore" "datastore_src" {
  name          = var.datastore_src
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

/* data "vsphere_datastore" "datastore_dst" {
  name          = var.datastore_dest
  datacenter_id = data.vsphere_datacenter.datacenter.id
} */

data "vsphere_compute_cluster" "cluster" {
  name          = var.cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = var.pg_network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

// To use the new port group for the VM, uncomment and use the below variable
/*
data "vsphere_network" "network" {
  name          = var.pg_new_network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
*/