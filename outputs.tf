output "waas_protection_rules_id" {
  description = "Map of id values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no id are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waas_protection_rules_action" {
  description = "Map of action values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no action are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "waas_protection_rules_description" {
  description = "Map of description values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no description are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "waas_protection_rules_exclusions" {
  description = "Map of exclusions values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no exclusions are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.exclusions if v.exclusions != null && length(v.exclusions) > 0 }
}
output "waas_protection_rules_key" {
  description = "Map of key values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no key are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.key if v.key != null && length(v.key) > 0 }
}
output "waas_protection_rules_labels" {
  description = "Map of labels values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no labels are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "waas_protection_rules_mod_security_rule_ids" {
  description = "Map of mod_security_rule_ids values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no mod_security_rule_ids are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.mod_security_rule_ids if v.mod_security_rule_ids != null && length(v.mod_security_rule_ids) > 0 }
}
output "waas_protection_rules_name" {
  description = "Map of name values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no name are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "waas_protection_rules_waas_policy_id" {
  description = "Map of waas_policy_id values across all waas_protection_rules, keyed the same as var.waas_protection_rules except keys with no waas_policy_id are omitted"
  value       = { for k, v in oci_waas_protection_rule.waas_protection_rules : k => v.waas_policy_id if v.waas_policy_id != null && length(v.waas_policy_id) > 0 }
}

