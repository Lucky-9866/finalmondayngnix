variable "ami" {
  type = string

}

variable "instance_type" {
    type = string
  
}

variable "subnet_id" {
  type = string
}


variable "security_groups" {
  type = any
}

variable "arn" {
  type = string
}

variable "associate_public_ip_address" {
  type = string
}

variable "availability_zone" {
  type = string
} 

variable "disable_api_stop" {
  type = string
}

variable "disable_api_termination" {
  type = string
}

variable "ebs_optimized" {
  type = string
}

variable "enable_primary_ipv6" {
  type = string
}

variable "get_password_data" {
  type = string
}

variable "host_id" {
  type = string
}

variable "host_resource_group_arn" {
  type = string
}

variable "iam_instance_profile" {
  type = string
}

variable "id" {
  type = string
}

variable "instance_initiated_shutdown_behavior" {
  type = string
}
variable "instance_lifecycle" {
  type = string
}

variable "instance_state" {
  type = string
}

variable "ipv6_address_count" {
  type = string
}

variable "ipv6_addresses" {
  type = any
}

variable "key_name" {
  type = string
}

variable "monitoring" {
  type = string
}

variable "outpost_arn" {
  type = string
}

variable "password_data" {
  type = string
}

variable "placement_group" {
  type = string
}

variable "placement_partition_number" {
  type = string
}

variable "primary_network_interface_id" {
  type = string
}

variable "private_dns" {
  type = string
}

variable "private_ip" {
  type = string
}

variable "public_dns" {
  type = string
}

variable "public_ip" {
  type = string
}

variable "secondary_private_ips" {
  type = any
}

variable "source_dest_check" {
  type = string
}

variable "spot_instance_request_id" {
  type = string
}

variable "tags" {
    type = map(string)
}

variable "tenancy" {
  type = string
}

variable "user_data" {
  type = string
}

variable "user_data_base64" {
  type = string
}

variable "user_data_replace_on_change" {
  type = string
}

variable "vpc_security_group_ids" {
  type = any
}

variable "hibernation" {
    type = string
  
}
variable "volume_tags" {
   type = map(string)
}
