output "ec2_default_credit_specifications_cpu_credits" {
  description = "Map of cpu_credits values across all ec2_default_credit_specifications, keyed the same as var.ec2_default_credit_specifications"
  value       = { for k, v in aws_ec2_default_credit_specification.ec2_default_credit_specifications : k => v.cpu_credits if v.cpu_credits != null && length(v.cpu_credits) > 0 }
}
output "ec2_default_credit_specifications_instance_family" {
  description = "Map of instance_family values across all ec2_default_credit_specifications, keyed the same as var.ec2_default_credit_specifications"
  value       = { for k, v in aws_ec2_default_credit_specification.ec2_default_credit_specifications : k => v.instance_family if v.instance_family != null && length(v.instance_family) > 0 }
}
output "ec2_default_credit_specifications_region" {
  description = "Map of region values across all ec2_default_credit_specifications, keyed the same as var.ec2_default_credit_specifications"
  value       = { for k, v in aws_ec2_default_credit_specification.ec2_default_credit_specifications : k => v.region if v.region != null && length(v.region) > 0 }
}

