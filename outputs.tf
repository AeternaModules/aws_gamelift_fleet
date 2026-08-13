output "gamelift_fleets_id" {
  description = "Map of id values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gamelift_fleets_arn" {
  description = "Map of arn values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "gamelift_fleets_build_arn" {
  description = "Map of build_arn values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.build_arn if v.build_arn != null && length(v.build_arn) > 0 }
}
output "gamelift_fleets_build_id" {
  description = "Map of build_id values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.build_id if v.build_id != null && length(v.build_id) > 0 }
}
output "gamelift_fleets_certificate_configuration" {
  description = "Map of certificate_configuration values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.certificate_configuration if v.certificate_configuration != null && length(v.certificate_configuration) > 0 }
}
output "gamelift_fleets_description" {
  description = "Map of description values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "gamelift_fleets_ec2_inbound_permission" {
  description = "Map of ec2_inbound_permission values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.ec2_inbound_permission if v.ec2_inbound_permission != null && length(v.ec2_inbound_permission) > 0 }
}
output "gamelift_fleets_ec2_instance_type" {
  description = "Map of ec2_instance_type values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.ec2_instance_type if v.ec2_instance_type != null && length(v.ec2_instance_type) > 0 }
}
output "gamelift_fleets_fleet_type" {
  description = "Map of fleet_type values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.fleet_type if v.fleet_type != null && length(v.fleet_type) > 0 }
}
output "gamelift_fleets_instance_role_arn" {
  description = "Map of instance_role_arn values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.instance_role_arn if v.instance_role_arn != null && length(v.instance_role_arn) > 0 }
}
output "gamelift_fleets_log_paths" {
  description = "Map of log_paths values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.log_paths if v.log_paths != null && length(v.log_paths) > 0 }
}
output "gamelift_fleets_metric_groups" {
  description = "Map of metric_groups values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.metric_groups if v.metric_groups != null && length(v.metric_groups) > 0 }
}
output "gamelift_fleets_name" {
  description = "Map of name values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "gamelift_fleets_new_game_session_protection_policy" {
  description = "Map of new_game_session_protection_policy values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.new_game_session_protection_policy if v.new_game_session_protection_policy != null && length(v.new_game_session_protection_policy) > 0 }
}
output "gamelift_fleets_operating_system" {
  description = "Map of operating_system values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.operating_system if v.operating_system != null && length(v.operating_system) > 0 }
}
output "gamelift_fleets_region" {
  description = "Map of region values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "gamelift_fleets_resource_creation_limit_policy" {
  description = "Map of resource_creation_limit_policy values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.resource_creation_limit_policy if v.resource_creation_limit_policy != null && length(v.resource_creation_limit_policy) > 0 }
}
output "gamelift_fleets_runtime_configuration" {
  description = "Map of runtime_configuration values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.runtime_configuration if v.runtime_configuration != null && length(v.runtime_configuration) > 0 }
}
output "gamelift_fleets_script_arn" {
  description = "Map of script_arn values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.script_arn if v.script_arn != null && length(v.script_arn) > 0 }
}
output "gamelift_fleets_script_id" {
  description = "Map of script_id values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.script_id if v.script_id != null && length(v.script_id) > 0 }
}
output "gamelift_fleets_tags" {
  description = "Map of tags values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "gamelift_fleets_tags_all" {
  description = "Map of tags_all values across all gamelift_fleets, keyed the same as var.gamelift_fleets"
  value       = { for k, v in aws_gamelift_fleet.gamelift_fleets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

