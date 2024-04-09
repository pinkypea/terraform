variable "esxi_hostname" {
	default = "some_hostname"
}

variable "esxi_hostport" {
	default = "22"
}

variable "esxi_hostssl" {
	default = "443"
}

variable "esxi_username" {
	default = "my_username"
}

variable "esxi_password" {
	default = "my_password"
}

variable "esxi_diskstore" {
	default = "datastore1"
}

variable "ovf_file" {
  default =  "https://cloud-images.ubuntu.com/releases/jammy/release/ubuntu-22.04-server-cloudimg-amd64.ova"
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
