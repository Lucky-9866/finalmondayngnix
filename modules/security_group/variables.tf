variable "sgname" {
  type = string 
}

variable "description" {
  type = string
}

variable "egress" {
    type = list(object({
    from_port = number
    to_port   = number
    protocol  = string
    cidr_blocks = optional(list(string))
  }))
}

variable "ingress" {
    type = list(object({
    from_port = number
    to_port   = number
    protocol  = string
    cidr_blocks = optional(list(string))
  }))
}

variable "name_prefix" {
  type    = string
  default = null
}

variable "revoke_rules_on_delete" {
  type    = string
  default = null
}

variable "vpc_id" {
  type = any
}

variable "tags" {
  type = map(string)
}