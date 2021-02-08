# Declares a runtime where workflows can execute
resource "sym_runtime" "this" {
  name       = var.environment
  context_id = sym_integration.runtime_context.id
}

# The base permissions that a workflow has access to
resource "sym_integration" "runtime_context" {
  type = "permission_context"
  name = "runtime-${var.environment}"

  settings = var.runtime_settings
}

# An integration with Slack
resource "sym_integration" "slack" {
  type = "slack"
  name = var.environment
  settings = {
    "token_id_path"    = "slack_auth_token",
    "token_secrets_id" = sym_secrets.aws.id
  }
}

# Secrets storage that Sym integrations can refer to
resource "sym_secrets" "aws" {
  type = "aws_secrets_manager"
  name = var.environment
  settings = {
    context_id = sym_integration.runtime_context.id
  }
}
