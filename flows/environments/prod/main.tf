provider "sym" {
  org = var.sym_org_slug
}

locals {
  environment = "prod"
}

module "access_flow" {
  source      = "../../modules/access-flow"
  environment = local.environment
}
