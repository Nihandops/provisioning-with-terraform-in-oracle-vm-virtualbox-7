Terraform VirtualBox VM on Windows 11

This project provisions a VirtualBox virtual machine on Windows 11 using Terraform and the shekeriev/virtualbox provider.

🚀 Overview

```Automates VirtualBox VM creation

Uses Host-Only networking

Tested on Windows 11

Outputs the VM IP address after provisioning```

📦 Prerequisites

Terraform

VirtualBox (with Extension Pack)

Host-Only network available in VirtualBox

VBoxManage added to PATH

📂 Project Structure
.
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md

🛠 Usage
Initialize
terraform init

Plan
terraform plan

Apply
terraform apply -auto-approve

Output

After apply, Terraform will show the assigned VM IP:

IP_addresses = [
  "192.168.56.101",
]

🖧 Networking

This project uses VirtualBox Host-Only Networking.

Example host-only range:

192.168.56.0/24


The VM receives an IP from this network.
You can SSH into it only from the host machine.

🔐 SSH Access
ssh <username>@<vm-ip>


Make sure:

SSH is enabled in the VM

The OS ISO supports SSH or cloud-init

Firewall allows port 22

🧹 Destroy VM
terraform destroy -auto-approve
