output "name" {
  description = "The name of Ocean"
  value       = spotinst_ocean_aws.soa.name
}

output "image_id" {
  description = "The Image Identifier"
  value       = spotinst_ocean_aws.soa.image_id
}

output "security_groups" {
  description = "The ASG"
  value       = spotinst_ocean_aws.soa.security_groups
}

output "subnet_ids" {
  description = "The VPC Subnet Identifier"
  value       = spotinst_ocean_aws.soa.subnet_ids
}


