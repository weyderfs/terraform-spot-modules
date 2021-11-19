resource "spotinst_ocean_aws_launch_spec" "soals" {
  iam_instance_profile  = var.iam_instance_profile
  name                  = var.name
  ocean_id              = var.ocean_id
  restrict_scale_down   = var.restrict_scale_down
  root_volume_size      = var.root_volume_size
  security_groups       = var.security_groups
  subnet_ids            = var.subnet_ids
  user_data             = var.user_data
                                                                                                                                                                                                                                                                                                       
  instance_types = var.instance_types

  labels {
    key    = var.labels_key
    value  = var.labels_value
  }

  taints {
    key    = var.taints_key
    value  = var.taints_value
    effect = var.taints_effect
  }

  strategy {
    spot_percentage = var.strategy_spot_percentage
  }

  tags = var.tags
}