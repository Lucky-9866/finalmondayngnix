resource "aws_security_group" "sg" {
  name                   = var.sgname
  description            = var.description
  name_prefix            = var.name_prefix
  revoke_rules_on_delete = var.revoke_rules_on_delete
  vpc_id                 = var.vpc_id
  tags                   = var.tags

  dynamic "egress" {
    for_each = var.egress == [] ? {} : { for eachEgress in var.egress : index(var.egress, eachEgress) => eachEgress}
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }

  dynamic "ingress" {
    for_each = var.ingress == [] ? {} : { for eachIngress in var.ingress : index(var.ingress, eachIngress) => eachIngress}
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

}