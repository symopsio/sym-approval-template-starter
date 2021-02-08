output "runtime_settings" {
  description = "Runtime Connector Settings"
  value       = module.runtime_connector.settings
}

output "slack_integration_id" {
  description = "The Slack integration ID"
  value       = var.sym_enabled ? module.sym[0].slack_integration_id : ""
}
