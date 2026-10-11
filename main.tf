resource "cloudflare_worker" "workers" {
  for_each = var.workers

  account_id     = each.value.account_id
  name           = each.value.name
  logpush        = each.value.logpush
  observability  = each.value.observability
  subdomain      = each.value.subdomain
  tags           = each.value.tags
  tail_consumers = each.value.tail_consumers
}

