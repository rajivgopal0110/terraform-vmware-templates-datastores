data "vsphere_host" "esxi_host" {
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_vmfs_datastore" "datastore" {
  name           = "terraform-disk-test"
  host_system_id = data.vsphere_host.esxi_host.id

  disks = [
    "mpx.vmhba0:C0:T1:L0"
  ]
}