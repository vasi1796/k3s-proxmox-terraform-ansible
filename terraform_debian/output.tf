
output "Server-IPS" {
  value = ["${proxmox_vm_qemu.proxmox_debian_server.*.default_ipv4_address}"]
}
