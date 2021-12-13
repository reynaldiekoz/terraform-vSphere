#Current modules version

terraform {
  required_version = ">= 0.13"
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
      version = "2.0.2"
    }
  }
}

provider "vsphere" {
  vsphere_server        = var.vsphere_server
  user                  = var.vsphere_user
  password              = var.vsphere_password
  allow_unverified_ssl  = var.vsphere_allow_unverified_ssl 
}
