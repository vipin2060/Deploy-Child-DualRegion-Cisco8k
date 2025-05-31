
output "primary_device_name_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.name
}

output "secondary_device_name_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.secondary_device[0].name
}

output "primary_device_uuid_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.uuid
}

output "secondary_device_uuid_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.secondary_device[0].uuid
}

output "primary_device_random_name_child" {
  value = "Pri-${random_pet.this.id}"
}

output "secondary_device_random_name_child" {
  value = "Sec-${random_pet.this.id}"
}

output "pass1_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.vendor_configuration.adminPassword
  sensitive = true
}


output "ssh_ip_vd_1_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.ssh_ip_address
}

output "ssh_ip_vd_2_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.secondary_device[0].ssh_ip_address
}

output "hostname_vd_1_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.hostname
}

output "hostname_vd_2_child" {
  value = equinix_network_device.Deploy-Child-Cisco8K.secondary_device[0].hostname
}

