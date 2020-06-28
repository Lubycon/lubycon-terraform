module "cloudfront_s3_cdn" {
  source                   = "../../../../../modules/cloudfront-s3-cdn/"
  namespace                = var.namespace
  stage                    = var.stage
  name                     = var.name
  parent_zone_name         = var.parent_zone_name
  use_regional_s3_endpoint = true
  origin_force_destroy     = false
  cors_allowed_headers     = ["*"]
  cors_allowed_methods     = ["GET", "HEAD"]
  cors_allowed_origins     = ["*"]
  cors_expose_headers      = ["*"]
  logging_enabled          = false
  default_ttl              = 86400
  tags                     = var.tags
}
