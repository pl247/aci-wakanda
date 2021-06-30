#========================================#
#  ACI Authentications Parameters        #
#========================================#

apic = {
  user           = "admin"
  password       = "Cisco123"
  url            = "https://172.22.16.91"
  unverified_ssl = true
}

#========================================#
#  ACI Demo Configurations               #
#========================================#

vmm_name = "ACI"

aci_bds = {
  "v20" = {
    name        = "v20"
    description = "Bridge Domain created with Terraform"
    subnet      = "192.168.20.1/24"
  }
  "v30" = {
    name        = "v30"
    description = "Bridge Domain created with Terraform"
    subnet      = "192.168.30.1/24"
  }
  "v40" = {
    name        = "v40"
    description = "Bridge Domain created with Terraform"
    subnet      = "192.168.40.1/24"
  }
}

epgs = {
  vlan20 = {
    ap_profile    = "internal"
    name          = "accessible"
    bridge_domain = "v20"
  }
  vlan30 = {
    ap_profile    = "internal"
    name          = "secure"
    bridge_domain = "v30"
  }
  vlan40 = {
    ap_profile    = "internal"
    name          = "highly-secure"
    bridge_domain = "v40"
  }
}