resource "spotinst_ocean_aws" "soa" {
  controller_id              = var.controller_id
  fallback_to_ondemand       = var.fallback_to_ondemand
  iam_instance_profile       = var.iam_instance_profile
  image_id                   = var.image_id
  name                       = var.name
  region                     = var.region
  security_groups            = var.security_groups
  subnet_ids                 = var.subnet_ids
  user_data                  = var.user_data
  utilize_reserved_instances = var.utilize_reserved_instances

  whitelist = var.whitelist

  autoscaler {
    autoscale_is_enabled     = var.autoscale_is_enabled
    autoscale_is_auto_config = var.autoscale_is_auto_config
    auto_headroom_percentage = var.auto_headroom_percentage

    autoscale_down {
      evaluation_periods        = var.autoscale_down_evaluation_periods
      max_scale_down_percentage = var.autoscale_down_max_scale_down_percentage
    }

    autoscale_headroom {
      cpu_per_unit    = var.autoscale_headroom_cpu_per_unit
      gpu_per_unit    = var.autoscale_headroom_gpu_per_unit
      memory_per_unit = var.autoscale_headroom_memory_per_unit
      num_of_units    = var.autoscale_headroom_num_of_units
    }

    resource_limits { 
      max_vcpu       = var.resource_limits_max_vcpu
      max_memory_gib = var.resource_limits_max_memory_gib
   	}
  }

  tags = var.tags
}