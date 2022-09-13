// Uploading files to a datastore
/* resource "vsphere_file" "linux_iso_upload" {
  datacenter         = var.datacenter
  datastore          = var.datastore_src
  source_file        = "C:/Users/RajivGopal/Downloads/Terraform_practice/datastores/TinyCore_Linux.iso"
  destination_file   = "ISOs/TinyCore_Linux.iso"
  create_directories = true
} */

// Copying files between source and destination datastores
/* resource "vsphere_file" "linux_iso_copy" {
  source_datacenter  = var.datacenter
  datacenter         = var.datacenter
  source_datastore   = var.datastore_src
  datastore          = var.datastore_dest
  source_file        = "ISO_src/TinyCore_Linux.iso"
  destination_file   = "ISO_dst/TinyCore_Linux_copied.iso"
  create_directories = true
} */