# return the latest Ubuntu Linux 16.04 oci images for Oracle cloud based on https://docs.cloud.oracle.com/iaas/images | ubuntu-1604-oci-images.tf

# get latest Ubuntu Linux 16.04 image
data "oci_core_images" "ubuntu-16-04" {
  compartment_id   = var.oci_compartment
  operating_system = "Canonical Ubuntu"
  filter {
    name   = "display_name"
    values = ["^Canonical-Ubuntu-16.04-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "ubuntu-16-04-latest-name" {
  value = data.oci_core_images.ubuntu-16-04.images.0.display_name
}
output "ubuntu-16-04-latest-id" {
  value = data.oci_core_images.ubuntu-16-04.images.0.id
}

# get latest Ubuntu Linux 16.04 Minimal image
data "oci_core_images" "ubuntu-16-04-minimal" {
  compartment_id   = var.oci_compartment
  operating_system = "Canonical Ubuntu"
  filter {
    name   = "display_name"
    values = ["^Canonical-Ubuntu-16.04-Minimal-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "ubuntu-16-04-minimal-latest-name" {
  value = data.oci_core_images.ubuntu-16-04-minimal.images.0.display_name
}
output "ubuntu-16-04-minimal-latest-id" {
  value = data.oci_core_images.ubuntu-16-04-minimal.images.0.id
}

# get latest Ubuntu Linux 16.04 GPU image
data "oci_core_images" "ubuntu-16-04-gpu" {
  compartment_id           = var.oci_compartment
  operating_system         = "Canonical Ubuntu"
  operating_system_version = "16.04"
  filter {
    name   = "display_name"
    values = ["^.*-GPU-.*$"]
    regex  = true
  }
}

output "ubuntu-16_04-gpu-latest-name" {
  value = data.oci_core_images.ubuntu-16-04-gpu.images.0.display_name
}
output "ubuntu-16_04-gpu-latest-id" {
  value = data.oci_core_images.ubuntu-16-04-gpu.images.0.id
}