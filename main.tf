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