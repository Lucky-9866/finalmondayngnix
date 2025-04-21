variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for AWS Network"
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
variable "public_subnet" {}

variable "tags" {

  type        = map(string)
  description = "Tags for the Network"
  
}