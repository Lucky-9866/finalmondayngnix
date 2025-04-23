vpc = [{
  cidr_block = "10.0.0.0/16"
  subnet_id   = "10.0.1.0/24"
  tags       = { "Name" : "my vpc" }
}]
subnet = [{
  cidr_block     = "10.0.0.0/16"
  public_subnet  = "10.0.1.0/24"
  private_subnet = "10.0.2.0/24"
  availability_zone               = "ap-south-1a"
  tags                            = {Name = "my subnet"}
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
cidr_block = "0.0.0.0/0"
 
  tags       = { "Name" : "route_table" }
}]
routetableassoc = [{
  subnet_id      = "10.0.1.0/24"
  route_table_id = ""
}]

igw = [{
  vpc_id     = "vpc-0abcd1234efgh5678"
}]
nat = [{
  allocation_id = "eipalloc-123456"
  private_ip    = "10.0.1.100"
  subnet_id     = "10.0.1.0/24"
}]

instance = [{
  ami                         = "ami-00bb6a80f01f03502"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  subnet_id                   ="10.0.1.0/24"
  tags                        = {
   Name = "aws_instance"
 }
 
  }]