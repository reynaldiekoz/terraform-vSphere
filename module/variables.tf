
## Data vars for vSphere ENV

variable "datacenter" {
   description = "vSphere  DataCenter Select"
   type = string   
}

variable "datastore" {
   description = "vSphere  DataStore Select"
   type = string 
}


variable "cluster" {
   description = "vSphere Cluster Select"
   type = string 

}

variable "pool" {
   description = "vShphere Resource pool"
   type = string 
  
}

variable "network" {
   description = "vSphere Network"
   type = string 

}

variable "template_name" {
   description = "vSphere templatename"
   type = string 
}


## Provider vars for vSphere ENV

variable "vsphere_server" {
   description = "vSphere Server Endpoint"
   type = string 

}


variable "vsphere_allow_unverified_ssl" {
   description = "vSphere Server Endpoint"
   default = true 
}



variable "vsphere_user" {
   description = "vSphere Server User"
   type = string 

}

variable "vsphere_password" {
   description = "vSphere Server Password"
   type = string 

}

## Resource vars for vSphere ENV
  

variable "vm_name" {
   description = "vSphere VM Name" 
   type = string 
   default ="reytf-testing"
}

variable "vm_guest" {
    description = "vSphere VM Guest"
    type = string 
    default ="reytf-guest"

}

variable "vm_cpunum" {
    description = "vSphere VM CPU Number"
    type = number
    default = 1 

}

variable "vm_memory" {
    description = "vSphere VM Memory"  
    type = number
    default = 1024 
}

/*variable "vm_adaptertype" {
    description = "vSphere VM adaptertype"
}
*/
variable "vm_diskname" {
    description = "vSphere VM Disk Name"
    type = string
    default = "reytf-disk"
}

variable "vm_disksize" {
    description = "vSphere VM Disk Size"
    type = number
    default = 8
}

variable "vm_hostname" {
    description = "vSphere VM hostname"
    type = string
    default = "reytf-test"
}

variable "vm_domain" {
    description = "vSphere VM domain"
    type = string
    default = "reytf.internal"
}

variable "vm_ipv4" {
    description = "vSphere VM ipv4"
    type = string
    default = "10.0.0.10"
}

variable "vm_ipv4netmask" {
    description = "vSphere VM netmask"
    type = number
    default = 24
}

variable "vm_gateway" {
    description = "vSphere VM gateway"
}


