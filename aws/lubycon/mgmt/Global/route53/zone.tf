resource "aws_route53_zone" "lubycon-io" {
  name          = var.lubycon_io_domain
  comment       = "Managed by terraform, Lubycon Production"
  tags          = var.tags
  force_destroy = false
}

output "r53_zone_lubycon_io_route53_zone_zone_id" {
  value       = aws_route53_zone.lubycon-io.zone_id
}
output "r53_zone_lubycon_io_route53_zone_name_servers" {
  value       = aws_route53_zone.lubycon-io.name_servers
}
output "r53_zone_lubycon_io_route53_zone_name" {
  value       = aws_route53_zone.lubycon-io.name
}

resource "aws_route53_zone" "storybook-lubycon-io" {
  name          = var.storybook_lubycon_io_domain
  comment       = "Managed by terraform, Lubycon Storybook"
  tags          = var.tags
  force_destroy = false
}
output "r53_zone_lubycon_io_storybook_route53_zone_zone_id" {
  value       = aws_route53_zone.storybook-lubycon-io.zone_id
}
output "r53_zone_lubycon_io_storybook_route53_zone_name_servers" {
  value       = aws_route53_zone.storybook-lubycon-io.name_servers
}
output "r53_zone_lubycon_io_storybook_route53_zone_name" {
  value       = aws_route53_zone.storybook-lubycon-io.name
}


resource "aws_route53_zone" "alpha-lubycon-io" {
  name          = var.alpha_lubycon_io_domain
  comment       = "Managed by terraform, Lubycon Alpha"
  tags          = var.tags
  force_destroy = false
}
output "r53_zone_lubycon_io_alpha_route53_zone_zone_id" {
  value       = aws_route53_zone.alpha-lubycon-io.zone_id
}
output "r53_zone_lubycon_io_alpha_route53_zone_name_servers" {
  value       = aws_route53_zone.alpha-lubycon-io.name_servers
}
output "r53_zone_lubycon_io_alpha_route53_zone_name" {
  value       = aws_route53_zone.alpha-lubycon-io.name
}

