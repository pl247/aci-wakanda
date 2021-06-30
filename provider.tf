#=================================#
#   Terraform Provider Block      #
#=================================#

terraform { 
  required_providers {
    aci = {
      source  = "CiscoDevNet/aci"
      #version = "0.5.4"
      version = "0.7.1"
    }
  }
}

#===============================================================================
# ACI Provider Details
#===============================================================================

provider "aci" {
  # Connectivity Details
  username = var.apic.user
  password = var.apic.password
  url      = var.apic.url
  insecure = var.apic.unverified_ssl
}