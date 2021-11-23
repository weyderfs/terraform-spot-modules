output "name" {
  description = "The arn of the table"
  value       = spotinst_ocean_aws_launch_spec.soals.name
}

output "iam_instance_profile" {
  description = "The arn of the table"
  value       = spotinst_ocean_aws_launch_spec.soals.iam_instance_profile
}

output "ocean_id" {
  description = "The arn of the table"
  value       = spotinst_ocean_aws_launch_spec.soals.ocean_id
}

output "security_groups" {
  description = "The arn of the table"
  value       = spotinst_ocean_aws_launch_spec.soals.security_groups
}

output "subnet_ids" {
  description = "The arn of the table"
  value       = spotinst_ocean_aws_launch_spec.soals.subnet_ids
}