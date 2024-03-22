variable "pm_user" {
  description = "The username for the proxmox user"
  type        = string
  sensitive   = false
  default     = "root@pam"

}
variable "pm_password" {
  description = "The password for the proxmox user"
  type        = string
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "Set to true to ignore certificate errors"
  type        = bool
  default     = false
}

variable "pm_host" {
  description = "The hostname or IP of the proxmox server"
  type        = string
}

variable "pm_node_name" {
  description = "name of the proxmox node to create the VMs on"
  type        = string
  default     = "pve"
}

variable "pvt_key" {}

variable "num_servers" {
  default = 1
}

variable "num_servers_mem" {
  default = "2048"
}

variable "template_vm_name" {}

variable "server_ips" {
  description = "List of ip addresses for the servers"
}

variable "networkrange" {
  default = 24
}

variable "gateway" {
  default = "192.168.1.1"
}
