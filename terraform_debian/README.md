<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | >=2.9.14 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.5.3 |
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 2.9.14 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.debian_vms_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.var_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [proxmox_vm_qemu.proxmox_debian_server](https://registry.terraform.io/providers/telmate/proxmox/latest/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gateway"></a> [gateway](#input\_gateway) | n/a | `string` | `"192.168.1.1"` | no |
| <a name="input_networkrange"></a> [networkrange](#input\_networkrange) | n/a | `number` | `24` | no |
| <a name="input_num_servers"></a> [num\_servers](#input\_num\_servers) | n/a | `number` | `1` | no |
| <a name="input_num_servers_mem"></a> [num\_servers\_mem](#input\_num\_servers\_mem) | n/a | `string` | `"2048"` | no |
| <a name="input_pm_host"></a> [pm\_host](#input\_pm\_host) | The hostname or IP of the proxmox server | `string` | n/a | yes |
| <a name="input_pm_node_name"></a> [pm\_node\_name](#input\_pm\_node\_name) | name of the proxmox node to create the VMs on | `string` | `"pve"` | no |
| <a name="input_pm_password"></a> [pm\_password](#input\_pm\_password) | The password for the proxmox user | `string` | n/a | yes |
| <a name="input_pm_tls_insecure"></a> [pm\_tls\_insecure](#input\_pm\_tls\_insecure) | Set to true to ignore certificate errors | `bool` | `false` | no |
| <a name="input_pm_user"></a> [pm\_user](#input\_pm\_user) | The username for the proxmox user | `string` | `"root@pam"` | no |
| <a name="input_pvt_key"></a> [pvt\_key](#input\_pvt\_key) | n/a | `any` | n/a | yes |
| <a name="input_server_ips"></a> [server\_ips](#input\_server\_ips) | List of ip addresses for the servers | `any` | n/a | yes |
| <a name="input_template_vm_name"></a> [template\_vm\_name](#input\_template\_vm\_name) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Server-IPS"></a> [Server-IPS](#output\_Server-IPS) | n/a |
<!-- END_TF_DOCS -->
