module "cloudfront_s3_cdn" {
  source                   = "../../../../../modules/cloudfront-s3-cdn/"
  namespace                = var.namespace
  stage                    = var.stage
  name                     = var.name
  aliases                  = var.aliases
  parent_zone_name         = var.parent_zone_name

  price_class              = var.price_class
  compress                 = true

  cors_allowed_headers     = ["*"]
  cors_allowed_methods     = ["GET", "HEAD"]
  cors_allowed_origins     = ["*"]
  cors_expose_headers      = ["ETag"]

  acm_certificate_arn      = var.acm_certificate_arn
  minimum_protocol_version = var.minimum_protocol_version

  use_regional_s3_endpoint = true
  origin_force_destroy     = false
  ipv6_enabled             = false
  logging_enabled          = false
  tags                     = var.tags
}
