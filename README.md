Apply by using the folowing command:
```
terraform init
terraform fmt
terraform plan -var-file="secret.tfvars"
terraform apply -var-file="secret.tfvars"
terraform destroy -var-file="secret.tfvars"
```

Use secrets-template.tfvars to generate secrets.tfvars file

To run checks locally you will need to have the following setup:
tflint
checkov
terraform-docs
infracost

You will need to register with infracost to get an api key with - infracost register

Source - https://towardsdev.com/deploying-a-two-tier-architecture-using-terraform-404c93d08f07

Terraform 1.1.8