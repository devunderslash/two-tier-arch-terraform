#!/bin/bash
#Bash script to be run locally

#Run tf format check
echo "Running tf format check"
tf_format_check=$(terraform fmt -write=false -diff=false .)

#Run tf validate check
echo "Running tf validate check"
tf_validate_check=$(terraform validate .)

#Run tflint check
echo "Running tflint check"
tflint_check=$(tflint)

#Run checkov check
echo "Running checkov check"
terraform plan -var-file="secrets.tfvars" -out ../checks/tf.plan
terraform show -json ../checks/tf.plan > ../checks/tf.json
checkov_check=$(checkov -f ../checks/tf.json)

#Run terraform docs
echo "Running terraform docs"
terraform_docs=$(terraform-docs markdown table --output-file ../checks/TF_Docs.md .)

#Run infracosts
echo "Running infracosts"
infracosts=$(infracost breakdown --path . --terraform-plan-flags="-var-file=secrets.tfvars" --format html > ../checks/cost_report.html)
