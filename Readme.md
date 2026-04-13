This is the first commit for the module. This will be used to execute terraform commands.
```bash

export LINODE_TOKEN="your_token"
cd stacks/vm
terraform init
terraform plan -var="linode_type=g6-nanode-1"
terraform apply -var="linode_type=g6-nanode-1"

```


```bash
# or put LINODE_TOKEN in ~/.bashrc 
export LINODE_TOKEN="your_token"

cd stacks/database
terraform init # or terraform -chdir=stacks/database init
terraform plan -var="db_type=g6-standard-1"
terraform apply -var="db_type=g6-standard-1"
```

Rerun plan and apply on ip change

terraform init
terraform plan
terraform apply


for s3 bucket.
```bash
sudo apt get install awscli -y
aws configure


-- simple copy command
aws s3 cp s3://bgovi-prod-artifacts-001/root/sup/sup.txt ./wtf.txt --endpoint-url https://us-mia-1.linodeobjects.com

```