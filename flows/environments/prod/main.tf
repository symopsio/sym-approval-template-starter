provider "sym" {
  org = var.sym_org_slug
}

locals {
  environment = "prod"
}

module "approval_flow" {
  source      = "../../modules/approval-flow"
  environment = local.environment
}
