variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
  default     = 1
}

variable "vm_name" {
  description = "Base name for VMs"
  type        = string
  default     = "terraform-vm"
}

variable "vm_image" {
  description = "URL of the VM image"
  type        = string
  default     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
}

variable "vm_cpus" {
  description = "Number of CPUs"
  type        = number
  default     = 1
}

variable "vm_memory" {
  description = "Memory in MB"
  type        = number
  default     = 1024
}

variable "network_interface" {
  description = "Network interface for bridged networking"
  type        = string
  default     = "Wi-Fi" # Change to your network adapter name
}