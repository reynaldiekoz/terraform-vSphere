# terraform-vSphere
This is an experimental terraform module for creating VMware Virtual Machine that ive done a couple past year in terms of internship in DDS Telkom
with updated terraform registry
im just use terraform validate to ensure since i dont have any access on actual server so please do a recheck before using this module

## Usage
Example usage (locally)
```hcl
module "module" {
  source                    = "./module"

  # vSphere Server
  vsphere_server                = "vcenter.localhost"
  vsphere_allow_unverified_ssl  = "true"
  vsphere_user                  = "user"
  vsphere_password              = "passwd"

  # vSphere Env
  datacenter       = "DC1"
  cluster          = "CL1"
  pool             = "RP1"
  datastore        = "DS1"
  network          = "NT1"

  # VM Template
  vm_guest                  = "test-guest"
  template_name             = "Ubuntu 18.04"

  # Virtual Machine
  vm_name                   = "Ubuntu-Virtual-Machine"
  vm_cpunum                 =  1
  vm_memory                 =  1024
  vm_disksize               =  8
  vm_ipv4                   = "172.10.13.11"
  vm_ipv4netmask            =  16
  vm_gateway                = "172.10.0.1"

}
```
## Notes

* This module using local file to store credential please check on ./module/provider
  
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_vsphere"></a> [vsphere](#requirement\vsphere) | = 2.0.2 |

## License

MIT Licensed. See LICENSE for full details.

## Reference
* [dimaskiddo original terraform vsphere Github repo](https://github.com/dimaskiddo/terraform-vsphere)
* [Terraform-Provider-vSphere Docs](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs)
