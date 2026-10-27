output "git_repositories_id" {
  description = "Map of id values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.id }
}
output "git_repositories_default_branch" {
  description = "Map of default_branch values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.default_branch }
}
output "git_repositories_disabled" {
  description = "Map of disabled values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.disabled }
}
output "git_repositories_initialization" {
  description = "Map of initialization values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => one(v.initialization) }
}
output "git_repositories_is_fork" {
  description = "Map of is_fork values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.is_fork }
}
output "git_repositories_name" {
  description = "Map of name values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.name }
}
output "git_repositories_parent_repository_id" {
  description = "Map of parent_repository_id values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.parent_repository_id }
}
output "git_repositories_project_id" {
  description = "Map of project_id values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.project_id }
}
output "git_repositories_remote_url" {
  description = "Map of remote_url values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.remote_url }
}
output "git_repositories_size" {
  description = "Map of size values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.size }
}
output "git_repositories_ssh_url" {
  description = "Map of ssh_url values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.ssh_url }
}
output "git_repositories_url" {
  description = "Map of url values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.url }
}
output "git_repositories_web_url" {
  description = "Map of web_url values across all git_repositories, keyed the same as var.git_repositories"
  value       = { for k, v in azuredevops_git_repository.git_repositories : k => v.web_url }
}

