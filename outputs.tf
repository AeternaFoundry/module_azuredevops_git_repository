output "git_repositories_id" {
  description = "Map of id values across all git_repositories, keyed the same as var.git_repositories except keys with no id are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "git_repositories_default_branch" {
  description = "Map of default_branch values across all git_repositories, keyed the same as var.git_repositories except keys with no default_branch are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.default_branch if v.default_branch != null && length(v.default_branch) > 0 }
}
output "git_repositories_disabled" {
  description = "Map of disabled values across all git_repositories, keyed the same as var.git_repositories except keys with no disabled are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.disabled if v.disabled != null }
}
output "git_repositories_initialization" {
  description = "Map of initialization values across all git_repositories, keyed the same as var.git_repositories except keys with no initialization are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => one(v.initialization) if v.initialization != null && length(v.initialization) > 0 }
}
output "git_repositories_is_fork" {
  description = "Map of is_fork values across all git_repositories, keyed the same as var.git_repositories except keys with no is_fork are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.is_fork if v.is_fork != null }
}
output "git_repositories_name" {
  description = "Map of name values across all git_repositories, keyed the same as var.git_repositories except keys with no name are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.name if v.name != null && length(v.name) > 0 }
}
output "git_repositories_parent_repository_id" {
  description = "Map of parent_repository_id values across all git_repositories, keyed the same as var.git_repositories except keys with no parent_repository_id are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.parent_repository_id if v.parent_repository_id != null && length(v.parent_repository_id) > 0 }
}
output "git_repositories_project_id" {
  description = "Map of project_id values across all git_repositories, keyed the same as var.git_repositories except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "git_repositories_remote_url" {
  description = "Map of remote_url values across all git_repositories, keyed the same as var.git_repositories except keys with no remote_url are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.remote_url if v.remote_url != null && length(v.remote_url) > 0 }
}
output "git_repositories_size" {
  description = "Map of size values across all git_repositories, keyed the same as var.git_repositories except keys with no size are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.size if v.size != null }
}
output "git_repositories_ssh_url" {
  description = "Map of ssh_url values across all git_repositories, keyed the same as var.git_repositories except keys with no ssh_url are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.ssh_url if v.ssh_url != null && length(v.ssh_url) > 0 }
}
output "git_repositories_url" {
  description = "Map of url values across all git_repositories, keyed the same as var.git_repositories except keys with no url are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.url if v.url != null && length(v.url) > 0 }
}
output "git_repositories_web_url" {
  description = "Map of web_url values across all git_repositories, keyed the same as var.git_repositories except keys with no web_url are omitted"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.web_url if v.web_url != null && length(v.web_url) > 0 }
}

