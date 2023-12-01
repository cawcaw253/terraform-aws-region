<!-- BEGIN_TF_DOCS -->
# Terraform AWS Region Module

Terraform module for better usage of region name and region code.
see details about aws global infrastructure on https://aws.amazon.com/about-aws/global-infrastructure/regions_az/?nc1=h_ls

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)


## Usage
```hcl
module "current_region" {
  source = "../../"
}

module "an2_region" {
  source = "../../"

  region_name = "ap-northeast-2"
  availability_zones = ["a", "b", "c", "d"]
}

output "current_region" {
  description = "outputs of current region"
  value       = module.current_region
}

output "an2_region" {
  description = "outputs of ap-northeast-2 region"
  value       = module.an2_region
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.available_zones](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_region.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | az codes of region | `list(string)` | `[]` | no |
| <a name="input_region_name"></a> [region\_name](#input\_region\_name) | Name of region | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_zone_names"></a> [availability\_zone\_names](#output\_availability\_zone\_names) | List of availability zones name |
| <a name="output_region_code"></a> [region\_code](#output\_region\_code) | Code of aws region |
| <a name="output_region_code_with_availability_zone"></a> [region\_code\_with\_availability\_zone](#output\_region\_code\_with\_availability\_zone) | Code of aws region with az |
| <a name="output_region_name"></a> [region\_name](#output\_region\_name) | Name of aws region |
