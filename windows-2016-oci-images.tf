# return the latest Windows 2016 oci images for Oracle cloud based on https://docs.cloud.oracle.com/iaas/images | windows-1604-oci-images.tf

# get latest Windows 2016 Virtual Machine image
data "oci_core_images" "windows-2016-vm" {
  compartment_id   = var.oci_compartment
  operating_system = "Windows"
  filter {
    name   = "display_name"
    values = ["^Windows-Server-2016-Standard-Edition-VM-Gen2-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "windows-2016-latest-vm-name" {
  value = data.oci_core_images.windows-2016-vm.images.0.display_name
}
output "windows-2016-latest-vm-id" {
  value = data.oci_core_images.windows-2016-vm.images.0.id
}

# get latest Windows 2016 Bare Metal image
data "oci_core_images" "windows-2016-bm" {
  compartment_id   = var.oci_compartment
  operating_system = "Windows"
  filter {
    name   = "display_name"
    values = ["^Windows-Server-2016-Datacenter-Edition-BM-Gen2-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "windows-2016-latest-bm-name" {
  value = data.oci_core_images.windows-2016-bm.images.0.display_name
}
output "windows-2016-latest-bm-id" {
  value = data.oci_core_images.windows-2016-bm.images.0.id
}

# get latest Windows 2016 Bare Metal Dense I/O image
data "oci_core_images" "windows-2016-bm-denseio" {
  compartment_id   = var.oci_compartment
  operating_system = "Windows"
  filter {
    name   = "display_name"
    values = ["^Windows-Server-2016-Datacenter-Edition-BM-Gen2-DenseIO-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "windows-2016-latest-bm-denseio-name" {
  value = data.oci_core_images.windows-2016-bm-denseio.images.0.display_name
}
output "windows-2016-latest-bm-denseio-id" {
  value = data.oci_core_images.windows-2016-bm-denseio.images.0.id
}
