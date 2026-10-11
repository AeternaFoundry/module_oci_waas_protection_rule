resource "oci_waas_protection_rule" "waas_protection_rules" {
  for_each = var.waas_protection_rules

  key            = each.value.key
  waas_policy_id = each.value.waas_policy_id
  action         = each.value.action

  dynamic "exclusions" {
    for_each = each.value.exclusions != null ? each.value.exclusions : []
    content {
      exclusions = exclusions.value.exclusions
      target     = exclusions.value.target
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

