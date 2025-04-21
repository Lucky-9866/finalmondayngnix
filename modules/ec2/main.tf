resource "aws_instance" "myinstance" {

  ami                                  = var.ami
  instance_type                        = var.instance_type
  subnet_id                            = var.subnet_id
  security_groups                      = var.security_groups
  arn                                  = var.arn
  associate_public_ip_address          = var.associate_public_ip_address
  availability_zone                    = var.availability_zone
  disable_api_stop                     = var.disable_api_stop
  disable_api_termination              = var.disable_api_termination
  ebs_optimized                        = var.ebs_optimized
  enable_primary_ipv6                  = var.enable_primary_ipv6
  get_password_data                    = var.get_password_data
  host_id                              = var.host_id
  host_resource_group_arn              = var.host_resource_group_arn
  iam_instance_profile                 = var.iam_instance_profile
  id                                   = var.id
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior
  instance_lifecycle                   = var.instance_lifecycle
  instance_state                       = var.instance_state
  ipv6_address_count                   = var.ipv6_address_count
  ipv6_addresses                       = var.ipv6_addresses
  key_name                             = var.key_name
  monitoring                           = var.monitoring
  outpost_arn                          = var.outpost_arn
  password_data                        = var.password_data
  placement_group                      = var.placement_group
  placement_partition_number           = var.placement_partition_number
  primary_network_interface_id         = var.primary_network_interface_id
  private_dns                          = var.private_dns
  private_ip                           = var.private_ip
  public_dns                           = var.public_dns
  public_ip                            = var.public_ip
  secondary_private_ips                = var.secondary_private_ips
  source_dest_check                    = var.source_dest_check
  spot_instance_request_id             = var.spot_instance_request_id
  tenancy                              = var.tenancy
  user_data_base64                     = var.user_data_base64
  user_data_replace_on_change          = var.user_data_replace_on_change
  vpc_security_group_ids               = var.vpc_security_group_ids
  hibernation                          = var.hibernation
  volume_tags                          = var.volume_tags  
  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y nginx
              systemctl start nginx
              systemctl enable nginx
              EOF

  tags = {
    Name = "nginx-server"
  }
}
