resource "azuredevops_git_repository" "git_repositories" {
  for_each = var.git_repositories

  name                 = each.value.name
  project_id           = each.value.project_id
  default_branch       = each.value.default_branch
  disabled             = each.value.disabled
  parent_repository_id = each.value.parent_repository_id

  initialization {
    init_type             = each.value.initialization.init_type
    password              = each.value.initialization.password
    service_connection_id = each.value.initialization.service_connection_id
    source_type           = each.value.initialization.source_type
    source_url            = each.value.initialization.source_url
    username              = each.value.initialization.username
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

