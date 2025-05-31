## This is only a sample terraform.tfvars - use your own terraform.tf vars file 

equinix_client_id     = "Use-your-own-Equinix-ClientID"
equinix_client_secret = "Use-your-own-Equinix-ClienTSecret"
account_number = "10000"  #Use your own Equinix AccountID
core_count = 2 #Mention the core count needed for your NE
metro_code = "DC" 
metro_code_secondary = "SV"
type_code = "C8000V"
package_code = "network-essentials"
sw_version = "17.09.04a"
username = "Put your user name"
key_name = "Put your KeyName"
project_id = "Put your own Project ID"
acl_template_id = "Put your own ACL ID"
notifications = ["vip@gmmail.com"] #this is a sample email
term_length = 1
