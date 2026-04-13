terraform {
  required_providers {
    linode= {
        source="linode/linode"
    }
    http = {
      source = "hashicorp/http"
    }

  }
}

# The provider will automatically look for the LINODE_TOKEN in the environment variable
provider "linode" {}

# This data source just fetches your account details (email, etc)
data "linode_account" "my_account" {}

data "http" "my_ipv4" {
  url = "https://api.ipify.org"
}

data "http" "my_ipv6" {
  url = "https://api6.ipify.org"
}

output "account_email" {
    value = data.linode_account.my_account.email
}

output "my_ip_cidr4" {
  value = "${trimspace(data.http.my_ipv4.response_body)}/32"   
}

output "my_ip_cidr6" {
  value = "${trimspace(data.http.my_ipv6.response_body)}/32"   
}