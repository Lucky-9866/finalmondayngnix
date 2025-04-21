variable "vpc" {
  type = list(object({
    cidr_block                           = optional(string)
    instance_tenancy                     = optional(string)
    ipv4_ipam_pool_id                    = optional(string)
    ipv4_netmask_length                  = optional(string)
    ipv6_cidr_block                      = optional(string)
    ipv6_ipam_pool_id                    = optional(string)
    ipv6_netmask_length                  = optional(string)
    ipv6_cidr_block_network_border_group = optional(string)
    enable_dns_support                   = optional(string)
    enable_network_address_usage_metrics = optional(string)
    enable_dns_hostnames                 = optional(string)
    assign_generated_ipv6_cidr_block     = optional(string)
    tags                                 = optional(map(string))
  }))
  default = []
}
variable "subnet" {
  description = "A list of subnet configurations"
  type = list(object({
    name                            = optional(string)
    vpc_id                          = optional(string)
    cidr_block                      = optional(string)
    availability_zone               = optional(string)
    map_public_ip_on_launch         = optional(string)
    assign_ipv6_address_on_creation = optional(string)
    enable_dns64                    = optional(string)
    enable_lni_at_device_index      = optional(string)
    ipv6_cidr_block                 = optional(string)
    ipv6_native                     = optional(string)
    tags                            = map(string)
  }))
}

variable "sgrules" {
  type = list(object({
    name                   = optional(string)
    description            = optional(string)
    name_prefix            = optional(string)
    revoke_rules_on_delete = optional(string)
    vpc_id                 = optional(string)
    tags                   = optional(map(string))
    egress = optional(list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = optional(list(string))
    })))
    ingress = optional(list(object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = optional(list(string))
    })))
  }))
}
variable "route_table" {

  type = list(object({
    vpc_id                     = optional(string)
    carrier_gateway_id         = optional(string)
    cidr_block                 = list(string)
    core_network_arn           = optional(string)
    destination_prefix_list_id = optional(string)
    egress_only_gateway_id     = optional(string)
    gateway_id                 = optional(string)
    ipv6_cidr_block            = optional(string)
    local_gateway_id           = optional(string)
    nat_gateway_id             = optional(string)
    network_interface_id       = optional(string)
    transit_gateway_id         = optional(string)
    vpc_endpoint_id            = optional(string)
    vpc_peering_connection_id  = optional(string)
    tags                       = optional(map(string))

  }))
  default = []

}
variable "routetableassoc" {
    type = list(object({
       route_table_id                       = optional(string)
       subnet_id                            = optional(string)           
    }))
}
variable "igw" {
   type = list(object({
     vpc_id                     = optional(string)         
    }))  
}

variable "instance" {
  type = list(object({

    host_id                              = optional(string)
    subnet_id                            = list(string)
    ami                                  = optional(string)
    instance_type                        = optional(string)
    security_groups                      = optional(string)
    arn                                  = optional(string)
    associate_public_ip_address          = optional(string)
    availability_zone                    = optional(string)
    disable_api_stop                     = optional(string)
    disable_api_termination              = optional(string)
    ebs_optimized                        = optional(string)
    enable_primary_ipv6                  = optional(string)
    get_password_data                    = optional(string)
    host_resource_group_arn              = optional(string)
    iam_instance_profile                 = optional(string)
    id                                   = optional(string)
    instance_initiated_shutdown_behavior = optional(string)
    instance_lifecycle                   = optional(string)
    instance_state                       = optional(string)
    ipv6_address_count                   = optional(string)
    ipv6_addresses                       = optional(string)
    key_name                             = optional(string)
    monitoring                           = optional(string)
    outpost_arn                          = optional(string)
    password_data                        = optional(string)
    placement_group                      = optional(string)
    placement_partition_number           = optional(string)
    primary_network_interface_id         = optional(string)
    private_dns                          = optional(string)
    private_ip                           = optional(string)
    public_dns                           = optional(string)
    public_ip                            = optional(string)
    secondary_private_ips                = optional(string)
    source_dest_check                    = optional(string)
    spot_instance_request_id             = optional(string)
    tags                                 = optional(map(string))
    tenancy                              = optional(string)
    user_data                            = optional(string)
    user_data_base64                     = optional(string)
    user_data_replace_on_change          = optional(string)
    vpc_security_group_ids               = optional(string)
    hibernation                          = optional(string)
    volume_tags                          = optional(string)
  }))

  default = []

}
variable "nat" {
    type = list(object({

   allocation_id                      = list(string) 
   connectivity_type                  = optional(string)
   private_ip                         = optional(string)
   subnet_id                          = optional(string)
   secondary_allocation_ids           = optional(string)
   secondary_private_ip_address_count = optional(string)
   secondary_private_ip_addresses     = optional(string)
   tags                               = optional(map(string))
}
 ))
 }