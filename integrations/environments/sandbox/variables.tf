variable "account_id_safelist" {
  description = "Additional AWS account IDs where the Sym runtime should be able to assume AWS Roles"
  type        = list(string)
  default     = []
}

variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
  type        = string
}

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
