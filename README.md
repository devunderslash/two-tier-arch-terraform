Apply by using the folowing command:
```
terraform init
terraform fmt
terraform plan -var-file="secret.tfvars"
terraform apply -var-file="secret.tfvars"
terraform destroy -var-file="secret.tfvars"
```

Source - https://towardsdev.com/deploying-a-two-tier-architecture-using-terraform-404c93d08f07

Terraform 1.1.8