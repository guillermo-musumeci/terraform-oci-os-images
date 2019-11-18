# return the latest CentOS 7 oci images for Oracle cloud based on https://docs.cloud.oracle.com/iaas/images | centos-7-oci-images.tf

# get latest CentOS 7 image
data "oci_core_images" "centos-7" {
  compartment_id           = var.oci_compartment
  operating_system         = "CentOS"
  operating_system_version = "7"
  sort_by                  = "TIMECREATED"
  sort_order               = "DESC"
}

output "centos-7-latest-name" {
  value = data.oci_core_images.centos-7.images.0.display_name
}

output "centos-7-latest-id" {
  value = data.oci_core_images.centos-7.images.0.id
}
