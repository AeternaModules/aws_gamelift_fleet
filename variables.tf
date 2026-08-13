variable "gamelift_fleets" {
  description = <<EOT
Map of gamelift_fleets, attributes below
Required:
    - ec2_instance_type
    - name
Optional:
    - build_id
    - description
    - fleet_type
    - instance_role_arn
    - metric_groups
    - new_game_session_protection_policy
    - region
    - script_id
    - tags
    - tags_all
    - certificate_configuration (block):
        - certificate_type (optional)
    - ec2_inbound_permission (block):
        - from_port (required)
        - ip_range (required)
        - protocol (required)
        - to_port (required)
    - resource_creation_limit_policy (block):
        - new_game_sessions_per_creator (optional)
        - policy_period_in_minutes (optional)
    - runtime_configuration (block):
        - game_session_activation_timeout_seconds (optional)
        - max_concurrent_game_session_activations (optional)
        - server_process (optional, block):
            - concurrent_executions (required)
            - launch_path (required)
            - parameters (optional)
EOT

  type = map(object({
    ec2_instance_type                  = string
    name                               = string
    build_id                           = optional(string)
    description                        = optional(string)
    fleet_type                         = optional(string)
    instance_role_arn                  = optional(string)
    metric_groups                      = optional(list(string))
    new_game_session_protection_policy = optional(string)
    region                             = optional(string)
    script_id                          = optional(string)
    tags                               = optional(map(string))
    tags_all                           = optional(map(string))
    certificate_configuration = optional(object({
      certificate_type = optional(string)
    }))
    ec2_inbound_permission = optional(list(object({
      from_port = number
      ip_range  = string
      protocol  = string
      to_port   = number
    })))
    resource_creation_limit_policy = optional(object({
      new_game_sessions_per_creator = optional(number)
      policy_period_in_minutes      = optional(number)
    }))
    runtime_configuration = optional(object({
      game_session_activation_timeout_seconds = optional(number)
      max_concurrent_game_session_activations = optional(number)
      server_process = optional(list(object({
        concurrent_executions = number
        launch_path           = string
        parameters            = optional(string)
      })))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.ec2_inbound_permission == null || (length(v.ec2_inbound_permission) <= 50)
      )
    ])
    error_message = "Each ec2_inbound_permission list must contain at most 50 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.runtime_configuration == null || (v.runtime_configuration.server_process == null || (length(v.runtime_configuration.server_process) <= 50))
      )
    ])
    error_message = "Each server_process list must contain at most 50 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.ec2_inbound_permission == null || alltrue([for item in v.ec2_inbound_permission : (item.from_port >= 1 && item.from_port <= 65535)])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.ec2_inbound_permission == null || alltrue([for item in v.ec2_inbound_permission : (item.to_port >= 1 && item.to_port <= 65535)])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.metric_groups == null || (alltrue([for x in v.metric_groups : length(x) >= 1 && length(x) <= 255]))
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.resource_creation_limit_policy == null || (v.resource_creation_limit_policy.new_game_sessions_per_creator == null || (v.resource_creation_limit_policy.new_game_sessions_per_creator >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.resource_creation_limit_policy == null || (v.resource_creation_limit_policy.policy_period_in_minutes == null || (v.resource_creation_limit_policy.policy_period_in_minutes >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.runtime_configuration == null || (v.runtime_configuration.game_session_activation_timeout_seconds == null || (v.runtime_configuration.game_session_activation_timeout_seconds >= 1 && v.runtime_configuration.game_session_activation_timeout_seconds <= 600))
      )
    ])
    error_message = "must be between 1 and 600"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.runtime_configuration == null || (v.runtime_configuration.max_concurrent_game_session_activations == null || (v.runtime_configuration.max_concurrent_game_session_activations >= 1 && v.runtime_configuration.max_concurrent_game_session_activations <= 2147483647))
      )
    ])
    error_message = "must be between 1 and 2147483647"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.runtime_configuration == null || (v.runtime_configuration.server_process == null || alltrue([for item in v.runtime_configuration.server_process : (item.concurrent_executions >= 1)]))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_fleets : (
        v.runtime_configuration == null || (v.runtime_configuration.server_process == null || alltrue([for item in v.runtime_configuration.server_process : (length(item.launch_path) >= 1 && length(item.launch_path) <= 1024)]))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

