resource "aws_route_table" "main" {
  vpc_id = var.vpc_id
  route {

    carrier_gateway_id         = var.carrier_gateway_id
    cidr_block                 = var.cidr_block[0]
    core_network_arn           = var.core_network_arn
    destination_prefix_list_id = var.destination_prefix_list_id
    egress_only_gateway_id     = var.egress_only_gateway_id
    gateway_id                 = var.internet_gateway_id
    ipv6_cidr_block            = var.ipv6_cidr_block
    local_gateway_id           = var.local_gateway_id
    nat_gateway_id             = var.nat_gateway_id
    network_interface_id       = var.network_interface_id
    transit_gateway_id         = var.transit_gateway_id
    vpc_endpoint_id            = var.vpc_endpoint_id
    vpc_peering_connection_id  = var.vpc_peering_connection_id
  
  }

  tags = {
    Name = "route_table"
  }

}
