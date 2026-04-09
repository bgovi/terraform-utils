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

data "http" "my_ip" {
  url = "https://api.ipify.org"
}

output "account_email" {
    value = data.linode_account.my_account.email
}

output "my_ip_cidr" {
  value = "${trimspace(data.http.my_ip.response_body)}/32"   
}