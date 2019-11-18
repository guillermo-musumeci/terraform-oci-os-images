# return the latest Windows 2012 oci images for Oracle cloud based on https://docs.cloud.oracle.com/iaas/images | windows-1604-oci-images.tf

# get latest Windows Server 2012 R2 Virtual Machine image
data "oci_core_images" "windows-2012-vm" {
  compartment_id   = var.oci_compartment
  operating_system = "Windows"
  filter {
    name   = "display_name"
    values = ["^Windows-Server-2012-R2-Standard-Edition-VM-Gen2-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "windows-2012-latest-vm-name" {
  value = data.oci_core_images.windows-2012-vm.images.0.display_name
}
output "windows-2012-latest-vm-id" {
  value = data.oci_core_images.windows-2012-vm.images.0.id
}

# get latest Windows 2012 Bare Metal image
data "oci_core_images" "windows-2012-bm" {
  compartment_id   = var.oci_compartment
  operating_system = "Windows"
  filter {
    name   = "display_name"
    values = ["^Windows-Server-2012-R2-Datacenter-Edition-BM-Gen2-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "windows-2012-latest-bm-name" {
  value = data.oci_core_images.windows-2012-bm.images.0.display_name
}
output "windows-2012-latest-bm-id" {
  value = data.oci_core_images.windows-2012-bm.images.0.id
}

# get latest Windows 2012 Bare Metal Dense I/O image
data "oci_core_images" "windows-2012-bm-denseio" {
  compartment_id   = var.oci_compartment
  operating_system = "Windows"
  filter {
    name   = "display_name"
    values = ["^Windows-Server-2012-R2-Datacenter-Edition-BM-Gen2-DenseIO-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "windows-2012-latest-bm-denseio-name" {
  value = data.oci_core_images.windows-2012-bm-denseio.images.0.display_name
}
output "windows-2012-latest-bm-denseio-id" {
  value = data.oci_core_images.windows-2012-bm-denseio.images.0.id
}
