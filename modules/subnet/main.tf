resource "aws_subnet" "subnet" {
  vpc_id                        = var.vpc_id
  cidr_block                    = var.cidr_block
  availability_zone             = var.availability_zone
  map_public_ip_on_launch       = var.map_public_ip_on_launch
  enable_lni_at_device_index    = var.enable_lni_at_device_index 
  enable_dns64                  = var.enable_dns64
  ipv6_cidr_block               = var.ipv6_cidr_block
  ipv6_native                   = var.ipv6_native
  tags                          = var.tags
}
