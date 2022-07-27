variable "ocean_id" {
  type        = string
  description = "(Required) The ID of the Ocean cluster."
}

variable "name" {
 type         = string
 description  = "(Optional) The name of the Virtual Node Group."
}

variable "user_data" {
  type        = string
  default     = ""
  description = "(Optional) Base64-encoded MIME user data to make available to the instances."
}

variable "iam_instance_profile" {
  type  = string
  description = "(Optional) The ARN or name of an IAM instance profile to associate with launched instances."
}

variable "restrict_scale_down" {
  type        = bool
  default     = false
  description = "(Optional) Boolean. When set to True, nodes will be treated as if all pods running have the restrict-scale-down label. Therefore, Ocean will not scale nodes down unless empty."
}

variable "root_volume_size" {
  type        = number
  default     = 0
  description = "(Optional) Set root volume size (in GB)."
}

variable "security_groups" {
  type        = list(string)
  default     = []
  description = "(Optional) Optionally adds security group IDs."
}

variable "subnet_ids" {
  type        = list(string)
  default     = []  
  description = "(Optional) A list of subnet IDs."
}

variable "instance_types" {
  type        = list
  default     = null
  description = "(Optional) A list of instance types allowed to be provisioned for pods pending under the specified launch specification. The list overrides the list defined for the cluster."
}

variable "strategy_spot_percentage" {
  type        = number
  default     = 100
  description = "(Optional; if not using spot_percentege under ocean strategy) When set, Ocean will proactively try to maintain as close as possible to the percentage of Spot instances out of all the Virtual Node Group instances."
}

variable "labels" {
  type        = list(object({ labels_key = string, labels_value = string, }))
  description = "(Optional) Optionally adds labels to instances launched in the cluster."
}

variable "taints" {
  type        = list(object({ taints_key = string, taints_value = string, taints_effect = string }))
  description = "(Optional) Optionally adds labels to instances launched in the cluster."
}

variable "tags" {
  type        = list(object({ tags_key = string, tags_value = string }))
  description = "The list of Tags"
}
