variable "namespace" {
  type        = string
  description = "The namespace for project"
}

variable "stage" {
  type        = string
  description = "the var for stage (Staging, Production)"
}

variable "domain" {
  type        = string
  description = "Domain name of the redirect host"
}

variable "zone_id" {
  type        = string
  description = "Zone id"
}

variable "target" {
  type        = string
  description = "URL that should be redirected to"
}

variable "tags" {
  type        = map
  description = "Tags"
  default     = {}
}

variable "force_destroy" {
  type        = bool
  description = "The force_destroy argument of the S3 bucket"
  default     = false
}
