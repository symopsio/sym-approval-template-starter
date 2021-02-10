provider "sym" {
  org = var.sym_org_slug
}

module "approval_flow" {
  count = var.sym_enabled == true ? 1 : 0

  source = "../../modules/approval-flow"

  environment = var.environment
}
