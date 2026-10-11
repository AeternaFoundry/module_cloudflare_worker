variable "workers" {
  description = <<EOT
Map of workers, attributes below
Required:
    - account_id
    - name
Optional:
    - logpush
    - observability
    - subdomain
    - tags
    - tail_consumers
EOT

  type = map(object({
    account_id = string
    name       = string
    logpush    = optional(bool)
    observability = optional(object({
      enabled            = optional(bool)
      head_sampling_rate = optional(number)
      logs = optional(object({
        destinations       = optional(list(string))
        enabled            = optional(bool)
        head_sampling_rate = optional(number)
        invocation_logs    = optional(bool)
        persist            = optional(bool)
      }))
      traces = optional(object({
        destinations       = optional(list(string))
        enabled            = optional(bool)
        head_sampling_rate = optional(number)
        persist            = optional(bool)
        propagation_policy = optional(string)
      }))
    }))
    subdomain = optional(object({
      enabled          = optional(bool)
      previews_enabled = optional(bool)
    }))
    tags = optional(set(string))
    tail_consumers = optional(set(object({
      name = string
    })))
  }))
}

