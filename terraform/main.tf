data "aws_caller_identity" "current" {}

data "aws_availability_zones" "available" {
  # Do not include local zones
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

locals {
  name            = var.cluster_name
  region          = var.region
  vpc_cidr        = var.vpc_cidr
  node_pools      = var.node_pools
  cluster_version = var.kubernetes_version

  azs = slice(data.aws_availability_zones.available.names, 0, var.number_availability_zones)

  tags = {
    Blueprint = local.name
  }
}
