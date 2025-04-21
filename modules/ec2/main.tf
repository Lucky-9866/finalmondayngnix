resource "aws_instance" "myinstance" {

  ami                                  = var.ami
  instance_type                        = var.instance_type
  subnet_id                            = var.subnet_id
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
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior
  key_name                             = var.key_name
  monitoring                           = var.monitoring
  placement_group                      = var.placement_group
  placement_partition_number           = var.placement_partition_number
  source_dest_check                    = var.source_dest_check
  tenancy                              = var.tenancy
  user_data_base64                     = var.user_data_base64
  user_data_replace_on_change          = var.user_data_replace_on_change
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
