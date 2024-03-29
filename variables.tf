variable "region_name" {
  description = "Name of region"
  default     = null
  type        = string
}

variable "availability_zones" {
  description = "availability zone codes of region"
  default     = []
  type        = list(string)
}
