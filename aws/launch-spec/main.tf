resource "spotinst_ocean_aws_launch_spec" "soals" {
  iam_instance_profile  = var.iam_instance_profile
  name                  = var.name
  ocean_id              = var.ocean_id
  restrict_scale_down   = var.restrict_scale_down
  root_volume_size      = var.root_volume_size
  security_groups       = var.security_groups
  subnet_ids            = var.subnet_ids
  user_data             = var.user_data
  instance_types        = var.instance_types
  
  strategy {
    spot_percentage = var.strategy_spot_percentage
  }
  
  dynamic "labels" {
    for_each = var.labels
    content {
      key   = labels.value.labels_key
      value = labels.value.labels_value
    }
  }

  dynamic "taints" {
    for_each = var.taints
    content {
      key     = taints.value.taints_key
      value   = taints.value.taints_value
      effect  = taints.value.taints_effect
    }
  }

  dynamic "tags" {
    for_each  = var.tags
    content {
      key   = tags.value.tags_key
      value = tags.value.tags_value
    }
  }
}