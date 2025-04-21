resource "aws_nat_gateway" "nat" {

   allocation_id            = aws_eip.nat_eip.id
   subnet_id                = var.subnet_id
   connectivity_type        = var.connectivity_type  
   private_ip               = var.private_ip
   tags                     = var.tags

}
resource "aws_eip" "nat_eip" {
  domain = "vpc"
}
