terraform {
  required_providers {
    virtualbox = {
      source  = "shekeriev/virtualbox"
      version = "0.0.4"
    }
  }
}


resource "virtualbox_vm" "node" {
  count  = 1
  name   = "test-vm"
  image  =  "https://app.vagrantup.com/ubuntu/boxes/jammy64/versions/20240131.0.0/providers/virtualbox.box"
  cpus   = 2
  memory = "1048 MiB"
  
  network_adapter {
    type           = "hostonly"
    host_interface = "VirtualBox Host-Only Ethernet Adapter" 
  }
}

output "IP_addresses" {
   value = virtualbox_vm.node[*].network_adapter[0].ipv4_address
 }
