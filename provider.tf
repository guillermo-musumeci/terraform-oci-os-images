# Oracle Cloud Provider | provider.tf

# Configure the Oracle Cloud Infrastructure provider with an API Key
provider "oci" {
  tenancy_ocid = "${var.oci_tenancy}"
  user_ocid = "${var.oci_user}"
  fingerprint = "${var.oci_fingerprint}"
  private_key_path = "${var.oci_key}"
  region = "${var.oci_region}"
}
