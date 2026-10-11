output "workers_id" {
  description = "Map of id values across all workers, keyed the same as var.workers except keys with no id are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workers_account_id" {
  description = "Map of account_id values across all workers, keyed the same as var.workers except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "workers_created_on" {
  description = "Map of created_on values across all workers, keyed the same as var.workers except keys with no created_on are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.created_on if v.created_on != null && length(v.created_on) > 0 }
}
output "workers_deployed_on" {
  description = "Map of deployed_on values across all workers, keyed the same as var.workers except keys with no deployed_on are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.deployed_on if v.deployed_on != null && length(v.deployed_on) > 0 }
}
output "workers_logpush" {
  description = "Map of logpush values across all workers, keyed the same as var.workers except keys with no logpush are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.logpush if v.logpush != null }
}
output "workers_name" {
  description = "Map of name values across all workers, keyed the same as var.workers except keys with no name are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workers_observability" {
  description = "Map of observability values across all workers, keyed the same as var.workers except keys with no observability are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.observability if v.observability != null && length(v.observability) > 0 }
}
output "workers_references" {
  description = "Map of references values across all workers, keyed the same as var.workers except keys with no references are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.references if v.references != null && length(v.references) > 0 }
}
output "workers_subdomain" {
  description = "Map of subdomain values across all workers, keyed the same as var.workers except keys with no subdomain are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.subdomain if v.subdomain != null && length(v.subdomain) > 0 }
}
output "workers_tags" {
  description = "Map of tags values across all workers, keyed the same as var.workers except keys with no tags are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "workers_tail_consumers" {
  description = "Map of tail_consumers values across all workers, keyed the same as var.workers except keys with no tail_consumers are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.tail_consumers if v.tail_consumers != null && length(v.tail_consumers) > 0 }
}
output "workers_updated_on" {
  description = "Map of updated_on values across all workers, keyed the same as var.workers except keys with no updated_on are omitted"
  value       = { for k, v in cloudflare_worker.workers : k => v.updated_on if v.updated_on != null && length(v.updated_on) > 0 }
}

