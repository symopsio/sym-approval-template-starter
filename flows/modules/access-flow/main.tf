data "sym_runtime" "this" {
  name = var.environment
}

data "sym_integration" "slack" {
  type = "slack"
  name = var.environment
}

resource "sym_flow" "this" {
  name  = "access_flow_${var.environment}"
  label = "Starter Access Flow (${title(var.environment)})"

  template = "sym:approval:1.0"

  implementation = "${path.module}/impl.py"

  environment = {
    runtime_id = data.sym_runtime.this.id
    slack_id   = data.sym_integration.slack.id
  }
}

// Implement impl.py, add a strategy and targets to finish your flow implementation!
