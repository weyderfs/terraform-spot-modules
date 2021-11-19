variable "controller_id" {
  type        = string
  description = "(Required) A unique identifier used for connecting the Ocean SaaS platform and the Kubernetes cluster. Typically, the cluster name is used as its identifier."
}

variable "fallback_to_ondemand" {
  type        = bool
  default     = true
  description = "(Optional, Default: true) If not Spot instance markets are available, enable Ocean to launch On-Demand instances instead."
}

variable "iam_instance_profile" {
  type        = string
  description = "(Optional) The instance profile iam role."
}

variable "image_id" {
  type        = string
  description = "(Required) ID of the image used to launch the instances."
}

variable "name" {
  type        = string
  description = "(Required) The cluster name."

}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "(Required) The region the cluster will run in."
}

variable "security_groups" {
  type        = list(string)
  default     = []
  description = "(Required) One or more security group ids."
}

variable "subnet_ids" {
  type        = list(string)
  default     = []
  description = "(Required) A comma-separated list of subnet identifiers for the Ocean cluster. Subnet IDs should be configured with auto assign public IP."
}

variable "user_data" {
  type        = string
  description = "(Optional) Base64-encoded MIME user data to make available to the instances."
}

variable "utilize_reserved_instances" {
  type        = bool
  default     = false
  description = "(Optional, Default true) If Reserved instances exist, Ocean will utilize them before launching Spot instances."
}

variable "whitelist" {
  type        = list(string)
  default     = []
  description = "(Optional) Instance types allowed in the Ocean cluster. Cannot be configured if blacklist is configured."
}

variable "autoscale_is_enabled" {
  type        = bool
  default     = true
  description = "(Optional, Default: true) Enable the Ocean Kubernetes Auto Scaler."
}

variable "autoscale_is_auto_config" {
  type    = bool
  default = false
  description = "(Optional, Default: true) Automatically configure and optimize headroom resources."
}

variable "auto_headroom_percentage" {
  type        = number
  default     = 6
  description = "(Optional) Set the auto headroom percentage (a number in the range [0, 200]) which controls the percentage of headroom from the cluster. Relevant only when autoscale_is_auto_config toggled on."
}

variable "autoscale_down_evaluation_periods" {
  type    = number
  default = 3
}

variable "autoscale_down_max_scale_down_percentage" {
  type        = number
  default     = 10
  description = "(Optional) Would represent the maximum % to scale-down. Number between 1-100."
}

variable "autoscale_headroom_cpu_per_unit" {
  type        = number
  default     = 4
  description = "(Optional) Optionally configure the number of CPUs to allocate the headroom. CPUs are denoted in millicores, where 1000 millicores = 1 vCPU."
}

variable "autoscale_headroom_gpu_per_unit" {
  type        = number
  default     = 0
  description = "(Optional) Optionally configure the number of GPUs to allocate the headroom."
}

variable "autoscale_headroom_memory_per_unit" {
 type         = number
 default      = 6
 description  = "(Optional) Optionally configure the amount of memory (MB) to allocate the headroom."
}

variable "autoscale_headroom_num_of_units" {
  type        = number
  default     = 2
  description = "(Optional) The number of units to retain as headroom, where each unit has the defined headroom CPU and memory."
}

variable "resource_limits_max_vcpu" {
  type        = number
  default     = 20000
  description = "(Optional) The maximum cpu in vCPU units that can be allocated to the cluster."
}

variable "resource_limits_max_memory_gib" {
  type        = number
  default     = 100000
  description = "(Optional) The maximum memory in GiB units that can be allocated to the cluster."
}

variable "tags" {
  type        = map(list)
  default     = {}
  
  description = "The list of Tags"
}
