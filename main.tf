
provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_hostport = var.esxi_hostport
  esxi_hostssl  = var.esxi_hostssl
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}

resource "esxi_guest" "trios" {
  guest_name = "trios"
  disk_store = var.esxi_diskstore
  boot_firmware = "efi"
  power         = "on"
  virthwver     = "21"
  ovf_source    = var.ovf_file
  network_interfaces {
    virtual_network = "VM Network"
  }
  guestinfo = {
    "metadata.encoding" = "gzip+base64"
    "metadata"          = base64gzip(data.template_file.cloud-metadata.rendered)
    "userdata.encoding" = "gzip+base64"
    "userdata"          = base64gzip(data.template_file.userdata_default.rendered)
  }
  ovf_properties {
    key   = "password"
    value = "trios"
  }

  ovf_properties {
    key   = "hostname"
    value = "trios"
  }
  ovf_properties {
    key   = "user-data"
    value = base64encode(data.template_file.userdata_default.rendered)
  }
}
data "template_file" "userdata_default" {
  template = file("userdata.tpl")
  vars = {
    HOSTNAME = "trios"
    HELLO    = "Hello ESXi World!"
  }
}

data "template_file" "cloud-metadata" {
  template = file("metadata.tpl")
  vars = {
    ipAddress  = var.vmIP
    gateway    = var.vmGateway
    nameserver = var.nameserver
  }
}
