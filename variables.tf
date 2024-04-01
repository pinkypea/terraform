variable "esxi_hostname" {
	default = "hostname"
}

variable "esxi_hostport" {
	default = "22"
}

variable "esxi_hostssl" {
	default = "443"
}

variable "esxi_username" {
	default = ""
}

variable "esxi_password" {
	default = ""
}

variable "esxi_diskstore" {
	default = "datastore1"
  
}
variable "vmIP" {
  default = "192.168.1.110/24"
}
variable "vmGateway" {
  default = "10.10.10.1"
}

variable "nameserver" {
  default = "8.8.8.8"
}