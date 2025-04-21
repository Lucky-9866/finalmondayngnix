variable "vpc_id" {
  description = "ID of VPC"
}
variable "cidr_block" {
 
}
variable "availability_zone" {
 
}
variable "map_public_ip_on_launch" {
 
}
variable "assign_ipv6_address_on_creation" {
  
}
variable "enable_dns64" {
 
}
variable "enable_lni_at_device_index" {  
 
}
variable "ipv6_cidr_block" {
  
}
variable "ipv6_native" {

}
variable "tags" {
  type        = map(string)
  description = "Tags for the Network"
  
}