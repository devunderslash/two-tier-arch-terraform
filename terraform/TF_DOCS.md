# Usage
<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| azs | AZs present in the VPC | `list(string)` | <pre>[<br>  "eu-west-1a",<br>  "eu-west-1b"<br>]</pre> | no |
| db\_password | Database administrator password | `string` | n/a | yes |
| db\_username | Database administrator username | `string` | n/a | yes |
| lb\_name | the name of the load balancer | `string` | `"two_tier_arch_lb"` | no |
| private\_subnets | CIDR range for private subnets | `list(string)` | <pre>[<br>  "10.0.3.0/24"<br>]</pre> | no |
| public\_subnets | CIDR range for private subnets | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24"<br>]</pre> | no |
| region | Region | `string` | `"eu-west-1"` | no |
| vpc\_cidr | range of CIDR | `string` | `"10.0.0.0/16"` | no |
| vpc\_name | Name of the VPC | `string` | `"two-tier-arch-vpc"` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->
