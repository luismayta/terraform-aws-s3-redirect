resource "aws_route53_zone" "primary" {
  name          = "equipindustry.com"
  force_destroy = "true"
}

module "redirect" {
  source    = "../"
  namespace = "equipindustry"
  stage     = "prod"
  name      = "app"
  domain    = "equipindustry.com"
  target    = "www.equipindustry.com"
  zone_id   = aws_route53_zone.primary.zone_id
}
