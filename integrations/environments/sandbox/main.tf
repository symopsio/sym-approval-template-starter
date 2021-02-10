provider "aws" {
  region = var.aws_region
}

provider "sym" {
  org = var.sym_org_slug
}

# Creates an AWS IAM Role that a Sym runtime can use for execution
module "runtime_connector" {
  source  = "terraform.symops.com/symopsio/runtime-connector/sym"
  version = ">= 1.1.0"

  account_id_safelist = var.account_id_safelist
  addons              = ["aws/secretsmgr"]
  environment         = var.environment
}

# Defines Sym integrations
module "sym" {
  count  = var.sym_enabled == true ? 1 : 0
  source = "../../modules/sym"

  environment      = var.environment
  runtime_settings = module.runtime_connector.settings
}
