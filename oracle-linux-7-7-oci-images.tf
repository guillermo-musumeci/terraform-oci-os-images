# return the latest Oracle Linux oci images for Oracle cloud based on https://docs.cloud.oracle.com/iaas/images | oracle-linux-oci-images.tf

# ----- Oracle Linux 7.7 -----

# get latest Oracle Linux 7.7 image
data "oci_core_images" "oraclelinux-7-7" {
  compartment_id           = var.oci_compartment
  operating_system         = "Oracle Linux"
  operating_system_version = "7.7"
  filter {
    name   = "display_name"
    values = ["^([a-zA-z]+)-([a-zA-z]+)-([\\.0-9]+)-([\\.0-9-]+)$"]
    regex  = true
  }
}
output "oracle-linux-7-7-latest-name" {
  value = data.oci_core_images.oraclelinux-7-7.images.0.display_name
}

output "oracle-linux-7-7-latest-id" {
  value = data.oci_core_images.oraclelinux-7-7.images.0.id
}

# get latest Oracle Linux 7.7 with GPU image
data "oci_core_images" "oraclelinux-7-7-gpu" {
  compartment_id           = var.oci_compartment
  operating_system         = "Oracle Linux"
  operating_system_version = "7.7"
  filter {
    name   = "display_name"
    values = ["^.*-GPU-.*$"]    
    regex  = true
  }
}

output "oracle-linux-7-7-gpu-latest-name" {
  value = data.oci_core_images.oraclelinux-7-7-gpu.images.0.display_name
}

output "oracle-linux-7-7-gpu-latest-id" {
  value = data.oci_core_images.oraclelinux-7-7-gpu.images.0.id
}

