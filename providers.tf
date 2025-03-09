terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "~> 2.0"
    }
  }
}

provider "vsphere" {
  user           = "administrator@vsphere.local"
  password       = "MonMotDePasse"
  vsphere_server = "vcenter.example.com"

  allow_unverified_ssl = true
}
