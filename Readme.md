This is the first commit for the module. This will be used to execute terraform commands.
```bash

export LINODE_TOKEN="your_token"
cd stacks/vm
terraform init
terraform plan -var="linode_type=g6-standard-1"
terraform apply -var="linode_type=g6-standard-1"

```


```bash
# or put LINODE_TOKEN in ~/.bashrc 
export LINODE_TOKEN="your_token"

cd stacks/database
terraform init # or terraform -chdir=stacks/database init
terraform plan -var="db_type=g6-standard-1"
terraform apply -var="db_type=g6-standard-1"
```