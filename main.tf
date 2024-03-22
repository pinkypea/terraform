
provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_hostport = var.esxi_hostport
  esxi_hostssl  = var.esxi_hostssl
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}

resource "esxi_guest" "trios_backend" {
  guest_name = "trios_backend" 
  disk_store = var.esxi_diskstore

  boot_firmware = "efi"
  
  # memsize = "4096"
  # numvcpus = "3"
  # boot_disk_type = "thin"
  # boot_disk_size = "50"
  power = "on"
  virthwver = "21"
  ovf_source        = "trios_test.ova"
  network_interfaces {
    virtual_network = "VM Network" 
  }
}

resource "esxi_guest" "trios_database" {
  guest_name = "trios_database" 
  disk_store = var.esxi_diskstore

  boot_firmware = "efi"
  
  # memsize = "4096"
  # numvcpus = "3"
  # boot_disk_type = "thin"
  # boot_disk_size = "50"
  power = "on"
  virthwver = "21"
  ovf_source        = "trios_test.ova"
  network_interfaces {
    virtual_network = "VM Network" 
  }
}

resource "esxi_guest" "trios_conference" {
  guest_name = "trios_conference" 
  disk_store = var.esxi_diskstore

  boot_firmware = "efi"
  
  # memsize = "4096"
  # numvcpus = "3"
  # boot_disk_type = "thin"
  # boot_disk_size = "50"
  power = "on"
  virthwver = "21"
  ovf_source        = "trios_test.ova"
  network_interfaces {
    virtual_network = "VM Network" 
  }
}

resource "esxi_guest" "trios_storage" {
  guest_name = "trios_storage" 
  disk_store = var.esxi_diskstore

  boot_firmware = "efi"
  
  # memsize = "4096"
  # numvcpus = "3"
  # boot_disk_type = "thin"
  # boot_disk_size = "50"
  power = "on"
  virthwver = "21"
  ovf_source        = "trios_test.ova"
  network_interfaces {
    virtual_network = "VM Network" 
  }
}

resource "esxi_guest" "trios_loadbalancer" {
  guest_name = "trios_loadbalancer" 
  disk_store = var.esxi_diskstore

  boot_firmware = "efi"
  
  # memsize = "4096"
  # numvcpus = "3"
  # boot_disk_type = "thin"
  # boot_disk_size = "50"
  power = "on"
  virthwver = "21"
  ovf_source        = "trios_test.ova"
  network_interfaces {
    virtual_network = "VM Network" 
  }
}




