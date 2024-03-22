resource "proxmox_vm_qemu" "proxmox_debian_server" {
  count       = var.num_servers
  name        = "debian-server-${count.index}"
  target_node = var.pm_node_name
  clone       = var.template_vm_name
  os_type     = "cloud-init"
  agent       = 1
  scsihw      = "virtio-scsi-pci"
  memory      = var.num_servers_mem
  cores       = 1

  ipconfig0 = "ip=${var.server_ips[count.index]}/${var.networkrange},gw=${var.gateway}"

  lifecycle {
    ignore_changes = [
      ciuser,
      sshkeys,
      disk,
      network
    ]
  }

}

data "template_file" "debian_vms" {
  template = file("./templates/debian_vms.tpl")
  vars = {
    debian_ip = "${join("\n", [for instance in proxmox_vm_qemu.proxmox_debian_server : join("", [instance.default_ipv4_address, " ansible_ssh_private_key_file=", var.pvt_key])])}"
  }
}

resource "local_file" "debian_vms_file" {
  content  = data.template_file.debian_vms.rendered
  filename = "../inventory/deb-vms/hosts.ini"
}

resource "local_file" "var_file" {
  source   = "../inventory/sample/group_vars/all.yml"
  filename = "../inventory/deb-vms/group_vars/all.yml"
}
