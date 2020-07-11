resource "aws_s3_bucket" "main" {
  provider      = aws.main
  bucket        = var.domain
  acl           = "public-read"
  force_destroy = var.force_destroy
  website {
    redirect_all_requests_to = var.target
  }
  tags = merge(
    map(
      "Resource", "s3",
      "Name", var.domain
    ),
    local.tags
  )
}
