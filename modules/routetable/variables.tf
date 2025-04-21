variable "vpc_id" {
  type        = string
  description = "The VPC ID associate with the route table"
}
variable "carrier_gateway_id" {
  type = string
}

variable "cidr_block" {
  type = list(string)
}
variable "core_network_arn" {
  type = string

}
variable "destination_prefix_list_id" {
  type = string

}
variable "egress_only_gateway_id" {
  type        = string
  description = "value of egress_only_gateway_id "

}
variable "ipv6_cidr_block" {
  type        = string
  description = "value of ipv6_cidr_block"
}

variable "gateway_id" {
  type        = string
  description = "value of gateway_id"

}

variable "local_gateway_id" {
  type        = string
  description = "value of local_gateway_id"

}

variable "nat_gateway_id" {
  type        = string
  description = "value of nat_gateway_id"

}

variable "network_interface_id" {
  type        = string
  description = "value of network_interface_id"

}

variable "transit_gateway_id" {
  type        = string
  description = "value of transit_gateway_id"

}

variable "vpc_endpoint_id" {
  type        = string
  description = "value of vpc_endpoint_id"

}

variable "vpc_peering_connection_id" {
  type        = string
  description = "value of vpc_peering_connection_id"
}

variable "tags" {
  type = map(string)
}
