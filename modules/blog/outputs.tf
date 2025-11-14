output "alb_dns_name" {
  value = module.blog_alb.dns_name
}

output "target_group_arns" {
  value = module.blog_alb.target_group_arns
}