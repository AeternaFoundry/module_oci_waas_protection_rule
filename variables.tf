variable "waas_protection_rules" {
  description = <<EOT
Map of waas_protection_rules, attributes below
Required:
    - key
    - waas_policy_id
Optional:
    - action
    - exclusions (block):
        - exclusions (optional)
        - target (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    key            = string
    waas_policy_id = string
    action         = optional(string)
    exclusions = optional(list(object({
      exclusions = optional(list(string))
      target     = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

