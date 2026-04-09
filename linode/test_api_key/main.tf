terraform {
  required_providers {
    linode= {
        source="linode/linode"
    }
  }
}

# The provider will automatically look for the LINODE_TOKEN in the environment variable
provider "linode" {}

# This data source just fetches your account details (email, etc)
data "linode_account" "my_account" {}

output "account_email" {
    value = data.linode_account.my_account.email
}