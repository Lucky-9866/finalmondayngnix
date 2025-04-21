variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"  # Or whichever CIDR block you need
}
variable "ipv4_ipam_pool_id" {

}

variable "ipv6_ipam_pool_id" {

}

variable "assign_generated_ipv6_cidr_block" {

}

variable "ipv6_netmask_length" {

}

variable "ipv4_netmask_length" {

}

variable "enable_dns_hostnames" {

}

variable "enable_dns_support" {

}

variable "enable_network_address_usage_metrics" {

}


variable "instance_tenancy" {

}

variable "ipv6_cidr_block_network_border_group" {

}


variable "ipv6_cidr_block" {

}


variable "tags" {

  type        = map(string)
  description = "Tags for the Network"
  
}