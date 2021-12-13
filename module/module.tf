## Data call for vSphere ENV
data "vsphere_datacenter" "dc" {
  name = var.datacenter
}

data "vsphere_datastore" "datastore" {
  name          = var.datastore
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = var.pool
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = var.network
  datacenter_id = data.vsphere_datacenter.dc.id
} 

data "vsphere_virtual_machine" "template" {
  datacenter_id         = data.vsphere_datacenter.dc.id
  name                  = var.template_name
}

## Resource Call for vSohare ENV
resource "vsphere_virtual_machine" "vm" {
  name             = var.vm_name
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id
  guest_id = var.vm_guest
  num_cpus = var.vm_cpunum
  memory   = var.vm_memory
 
## Need to check on adapter_type
  network_interface {
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = var.vm_diskname
    size  = var.vm_disksize
  }
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

  customize {
      linux_options {
        host_name = var.vm_hostname
        domain    = var.vm_domain
      }

      network_interface {
        ipv4_address = var.vm_ipv4
        ipv4_netmask = var.vm_ipv4netmask 
      }
      ipv4_gateway = var.vm_gateway
    }
  }
}