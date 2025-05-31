resource "random_pet" "this" {
  length = 2
}

resource "equinix_network_device" "Deploy-Child-Cisco8K" {
  name              = "Pri-${random_pet.this.id}"
  metro_code        = var.metro_code
  type_code         = var.type_code
  self_managed      = true
  byol              = true
  package_code      = var.package_code
  notifications     = var.notifications
  hostname          = "vd1-${var.metro_code}-${var.username}"
  term_length       = var.term_length
  interface_count   = 24
  account_number    = var.account_number
  version           = var.sw_version
  core_count        = var.core_count
  acl_template_id   = var.acl_template_id
  project_id      = var.project_id
  ssh_key {
    username        = var.username
    key_name        = var.key_name
  }

   secondary_device {
    name            = "Sec-${random_pet.this.id}"
    metro_code      = var.metro_code_secondary
    hostname        = "vd1-${var.metro_code}-${var.username}"
    notifications   = var.notifications
    account_number  = var.account_number
    acl_template_id   = var.acl_template_id
  }

}
