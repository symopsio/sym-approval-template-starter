variable "environment" {
  description = "Environment for these resources"
  default     = "sandbox"
  type        = string
}

variable "sym_enabled" {
  description = "Whether to provision Sym resources"
  default     = false
  type        = bool
}

variable "sym_org_slug" {
  description = "Sym org slug for your org"
  type        = string
}
