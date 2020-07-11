locals {
  tags = {
    terraform_id = var.namespace
    Environment  = var.stage
  }
}