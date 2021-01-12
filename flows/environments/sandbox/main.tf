provider "sym" {
  org = var.sym_org_slug
}

locals {
  environment = "sandbox"
}

module "access_flow" {
  source      = "../../modules/access-flow"
  environment = local.environment
}
