module "vpc" {
  source                               = "./modules/vpc"
  for_each                             = { for eachNetwork in var.vpc : index(var.vpc, eachNetwork) => eachNetwork }
  vpc_cidr                             = each.value.vpc_cidr
  public_subnet                        = each.value.public_subnet
  ipv4_ipam_pool_id                    = each.value.ipv4_ipam_pool_id
  instance_tenancy                     = each.value.instance_tenancy
  ipv6_ipam_pool_id                    = each.value.ipv6_ipam_pool_id
  ipv4_netmask_length                  = each.value.ipv4_netmask_length
  ipv6_cidr_block                      = each.value.ipv6_cidr_block
  ipv6_netmask_length                  = each.value.ipv6_netmask_length
  assign_generated_ipv6_cidr_block     = each.value.assign_generated_ipv6_cidr_block
  enable_dns_hostnames                 = each.value.enable_dns_hostnames
  enable_dns_support                   = each.value.enable_dns_support
  enable_network_address_usage_metrics = each.value.enable_network_address_usage_metrics
  ipv6_cidr_block_network_border_group = each.value.ipv6_cidr_block_network_border_group
  tags                                 = each.value.tags
}

module "subnet" {
  source                          = "./modules/subnet"
  for_each                        = { for eachNetwork in var.subnet : index(var.subnet, eachNetwork) => eachNetwork }
  vpc_id                          = module.vpc.aws_vpc_main.id
  cidr_block                      = each.value.cidr_block
  availability_zone               = each.value.availability_zone
  map_public_ip_on_launch         = each.value.map_public_ip_on_launch
  assign_ipv6_address_on_creation = each.value.assign_ipv6_address_on_creation
  enable_dns64                    = each.value.enable_dns64
  enable_lni_at_device_index      = each.value.enable_lni_at_device_index
  ipv6_cidr_block                 = each.value.ipv6_cidr_block
  ipv6_native                     = each.value.ipv6_native
  tags                            = each.value.tags
}

module "security-groups" {
  source      = "./modules/security_group"
  depends_on  = [ module.custom-vpc ]
  vpc_id      = module.custom-vpc[0].vpc_id
  for_each    = { for eachRule in var.sgrules : eachRule.name => eachRule }
  sgname      = each.value.name
  description = each.value.description
  tags        = each.value.tags
  ingress     = each.value.ingress
  egress      = each.value.egress
}
module "route-table" {
  source                     = "./modules/routetable"
  for_each                   = { for eachNetwork in var.route_table : eachNetwork.cidr_block => eachNetwork }
  vpc_id                     = module.vpc.aws_vpc_main.id
  carrier_gateway_id         = each.value.carrier_gateway_id
  cidr_block                 = each.value.cidr_block
  core_network_arn           = each.value.core_network_arn
  destination_prefix_list_id = each.value.destination_prefix_list_id
  egress_only_gateway_id     = each.value.egress_only_gateway_id
  ipv6_cidr_block            = each.value.ipv6_cidr_block
  gateway_id                 = each.value.gateway_id
  local_gateway_id           = each.value.local_gateway_id
  nat_gateway_id             = each.value.nat_gateway_id
  network_interface_id       = each.value.network_interface_id
  transit_gateway_id         = each.value.transit_gateway_id
  vpc_endpoint_id            = each.value.vpc_endpoint_id
  vpc_peering_connection_id  = each.value.vpc_peering_connection_id
  tags                       = each.value.tags

}
module "routetableassoc" {
  source         = "./modules/routetableassoc"
  subnet_id      = module.subnet.aws_subnet_main.id
  route_table_id = module.rt.aws_route_table_main.id
}
module "igw" {
       source       = "./modules/igw"
       vpc_id       = module.custom-vpc.vpc_id
}
module "instance" {
       source = "./modules/ec2"
       for_each                             = { for eachNetwork in var.instance : eachNetwork.subnet_id => eachNetwork }
       host_id                              = each.value.host_id
       subnet_id                            = each.key
       ami                                  = each.value.ami
       instance_type                        = each.value.instance_type
       security_groups                      = each.value.security_groups
       arn                                  = each.value.arn
       associate_public_ip_address          = each.value.associate_public_ip_address
       availability_zone                    = each.value.availability_zone 
       disable_api_stop                     = each.value.disable_api_stop
       disable_api_termination              = each.value.disable_api_termination
       ebs_optimized                        = each.value.ebs_optimized
       enable_primary_ipv6                  = each.value.enable_primary_ipv6
       get_password_data                    = each.value.get_password_data
       host_resource_group_arn              = each.value.host_resource_group_arn
       iam_instance_profile                 = each.value.iam_instance_profile
       id                                   = each.value.id
       instance_initiated_shutdown_behavior = each.value.instance_initiated_shutdown_behavior
       instance_lifecycle                   = each.value.instance_lifecycle
       instance_state                       = each.value.instance_state
       ipv6_address_count                   = each.value.ipv6_address_count
       ipv6_addresses                       = each.value.ipv6_addresses
       key_name                             = each.value.key_name
       monitoring                           = each.value.monitoring
       outpost_arn                          = each.value.outpost_arn
       password_data                        = each.value.password_data
       placement_group                      = each.value.placement_group
       placement_partition_number           = each.value.placement_partition_number
       primary_network_interface_id         = each.value.primary_network_interface_id
       private_dns                          = each.value.private_dns
       private_ip                           = each.value.private_ip
       public_dns                           = each.value.public_dns
       public_ip                            = each.value.public_ip
       secondary_private_ips                = each.value.secondary_private_ips
       source_dest_check                    = each.value.source_dest_check
       spot_instance_request_id             = each.value.spot_instance_request_id
       tenancy                              = each.value.tenancy
       user_data                            = each.value.user_data
       user_data_base64                     = each.value.user_data_base64
       user_data_replace_on_change          = each.value.user_data_replace_on_change
       vpc_security_group_ids               = each.value.vpc_security_group_ids 
       hibernation                          = each.value.hibernation
       volume_tags                          = each.value.volume_tags 
       tags                                 = each.value.tags 
}
module "nat" {
    source = "./modules/nat"
    for_each                              = { for eachNetwork in var.nat : eachNetwork.allocation_id=> eachNetwork }
    allocation_id                         = each.key
    connectivity_type                     = each.value.connectivity_type  
    private_ip                            = each.value.private_ip
    public_subnet_id                      = each.value.public_subnet_id
    tags                                  = each.value.tags
  
}