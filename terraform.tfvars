vpc = [{
  vpc_cidr       = "10.0.0.0/16"
  tags       = { "Name" : "my vpc" }
}]
subnet = [{
  vpc_cidr       = "10.0.0.0/16"
  public_subnet  = "10.0.1.0/24"
  private_subnet = "10.0.2.0/24"
  availability_zone               = "ap-south-1a"
  tags                            = {Name = "my subnets"}
}]
sgrules = [{
  name        = "mysecuritygroup1"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "allow_tls"
  }
  egress = [{
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
    cidr_blocks = ["0.0.0.0/0"]
  }]
  ingress = [{
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 22
      protocol    = "tcp"
      to_port     = 22
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}]

route_table = [{
 vpc_cidr       = "10.0.0.0/16"
 
  tags       = { "Name" : "route_table" }
}]
routetableassoc = [{
  subnet_id      = var.private_subnet_id
  route_table_id = aws_route_table.private_rt.id
}]

igw = [{
  vpc_id     = "vpc-0abcd1234efgh5678"
}]
nat = [{
   allocation_id            = "*******"
   private_ip               = "*******"
   subnet_id                = "subnet-0caafad8c1d8c5063"
}]

instance = [{
  ami                         = "ami-00bb6a80f01f03502"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  tags                        = "name : aws_instance"  
  }]