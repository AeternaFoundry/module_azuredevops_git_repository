variable "git_repositories" {
  description = <<EOT
Map of git_repositories, attributes below
Required:
    - name
    - project_id
    - initialization (block):
        - init_type (required)
        - password (optional)
        - service_connection_id (optional)
        - source_type (optional)
        - source_url (optional)
        - username (optional)
Optional:
    - default_branch
    - disabled
    - parent_repository_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    name                 = string
    project_id           = string
    default_branch       = optional(string)
    disabled             = optional(bool)
    parent_repository_id = optional(string)
    initialization = object({
      init_type             = string
      password              = optional(string)
      service_connection_id = optional(string)
      source_type           = optional(string)
      source_url            = optional(string)
      username              = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.git_repositories : (
        v.initialization.source_type == null || (contains(["Git"], v.initialization.source_type))
      )
    ])
    error_message = "must be one of: \"Git\""
  }
  validation {
    condition = alltrue([
      for k, v in var.git_repositories : (
        v.parent_repository_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.parent_repository_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

