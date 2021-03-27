####################
# lubyon.io
####################
module "lubycon-io-records" {
  source = "../../../../modules/route53/modules/records"
  zone_name = aws_route53_zone.lubycon-io.name
  records = [
    {
      name = "alpha"
      type = "NS"
      ttl  = 30
      records = aws_route53_zone.alpha-lubycon-io.name_servers
    },
    {
      name = "storybook"
      type = "NS"
      ttl  = 30
      records = aws_route53_zone.storybook-lubycon-io.name_servers
    },
    {
      name = ""
      type = "A"
      ttl  = 30
      records = var.github_pages_ip_addresses
    },
    {
      name = "www"
      type = "CNAME"
      ttl  = 30
      records = [var.lubycon_io_domain]
    },
    {
      name = "ui-kit"
      type = "A"
      ttl  = 30
      records = var.github_pages_ip_addresses
    },
  ]
}
output "r53-records-lubycon-io-records_route53_record_name" {
  description = "The name of the record"
  value       = module.lubycon-io-records.this_route53_record_name
}
output "r53-records-lubycon-io-records_route53_record_fqdn" {
  description = "FQDN built using the zone domain and name"
  value       = module.lubycon-io-records.this_route53_record_fqdn
}

####################
# lubyon.io
####################
module "storybook-lubycon-io-records" {
  source = "../../../../modules/route53/modules/records"
  zone_name = aws_route53_zone.storybook-lubycon-io.name
  records = [
    {
      name = "ui-kit"
      type = "A"
      ttl  = 30
      records = var.github_pages_ip_addresses
    },
  ]
}
output "r53-records-storybook-lubycon-io-records_route53_record_name" {
  description = "The name of the record"
  value       = module.storybook-lubycon-io-records.this_route53_record_name
}
output "r53-records-storybook-lubycon-io-records_route53_record_fqdn" {
  description = "FQDN built using the zone domain and name"
  value       = module.storybook-lubycon-io-records.this_route53_record_fqdn
}

####################
# alpha.lubyon.io
####################
module "alpha-lubycon-io-records" {
  source = "../../../../modules/route53/modules/records"
  zone_name = aws_route53_zone.alpha-lubycon-io.name
  records = [
    {
      name = ""
      type = "A"
      ttl  = 30
      records = var.github_pages_ip_addresses
    },
    {
      name = "ui-kit"
      type = "A"
      ttl  = 30
      records = var.github_pages_ip_addresses
    },
  ]
}
output "r53-records-alpha-lubycon-io-records_route53_record_name" {
  description = "The name of the record"
  value       = module.alpha-lubycon-io-records.this_route53_record_name
}
output "r53-records-alpha-lubycon-io-records_route53_record_fqdn" {
  description = "FQDN built using the zone domain and name"
  value       = module.alpha-lubycon-io-records.this_route53_record_fqdn
}
