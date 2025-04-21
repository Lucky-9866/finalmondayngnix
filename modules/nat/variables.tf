variable " vpc" {
  type =  string
}
variable "allocation_id" {
  type = string
}
variable "connectivity_type" {
   type = string
}
variable "private_ip" {
   type = string
}
variable "subnet_id" {
   type = string
}
variable "tags" {
   type = map(string) 
}