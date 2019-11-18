# return the latest Ubuntu Linux 18.04 oci images for Oracle cloud based on https://docs.cloud.oracle.com/iaas/images | ubuntu-1804-oci-images.tf

# get latest Ubuntu Linux 18.04 image
data "oci_core_images" "ubuntu-18-04" {
  compartment_id   = "${var.oci_compartment}"
  operating_system = "Canonical Ubuntu"
  filter {
    name   = "display_name"
    values = ["^Canonical-Ubuntu-18.04-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "ubuntu-18-04-latest-name" {
  value = data.oci_core_images.ubuntu-18-04.images.0.display_name
}
output "ubuntu-18-04-latest-id" {
  value = data.oci_core_images.ubuntu-18-04.images.0.id
}

# get latest Ubuntu Linux 18.04 Minimal image
data "oci_core_images" "ubuntu-18-04-minimal" {
  compartment_id   = "${var.oci_compartment}"
  operating_system = "Canonical Ubuntu"
  filter {
    name   = "display_name"
    values = ["^Canonical-Ubuntu-18.04-Minimal-([\\.0-9-]+)$"]    
    regex  = true
  }
}

output "ubuntu-18-04-minimal-latest-name" {
  value = data.oci_core_images.ubuntu-18-04-minimal.images.0.display_name
}
output "ubuntu-18-04-minimal-latest-id" {
  value = data.oci_core_images.ubuntu-18-04-minimal.images.0.id
}