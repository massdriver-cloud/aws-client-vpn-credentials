// Auto-generated variable declarations from massdriver.yaml
variable "md_metadata" {
  type = object({
    default_tags = object({
      managed-by  = string
      md-manifest = string
      md-package  = string
      md-project  = string
      md-target   = string
    })
    deployment = object({
      id = string
    })
    name_prefix = string
    observability = object({
      alarm_webhook_url = string
    })
    package = object({
      created_at             = string
      deployment_enqueued_at = string
      previous_status        = string
      updated_at             = string
    })
    target = object({
      contact_email = string
    })
  })
}
// Auto-generated variable declarations from massdriver.yaml
variable "validity_hours" {
  type = number
}
// Auto-generated variable declarations from massdriver.yaml
variable "endpoint" {
  type = object({
    data = object({
      authentication = object({
        ca_certificate_pem = optional(string)
        ca_private_key_pem = string
      })
      infrastructure = object({
        arn      = string
        dns_name = string
      })
    })
    specs = object({
      aws = optional(object({
        region = optional(string)
      }))
    })
  })
}
