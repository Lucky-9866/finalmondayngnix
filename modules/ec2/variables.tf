variable "ami" {
  type = string

}

variable "instance_type" {
    type = string
  
}

variable "subnet_id" {
  type = string
}
variable "security_group_id" {
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
variable "instance_initiated_shutdown_behavior" {
  type = string
}


variable "key_name" {
  type = string
}

variable "monitoring" {
  type = string
}

variable "placement_group" {
  type = string
}

variable "placement_partition_number" {
  type = string
}

variable "public_ip" {
  type = string
}

variable "source_dest_check" {
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


variable "hibernation" {
    type = string
  
}
variable "volume_tags" {
   type = map(string)
}

