# Simple

Configuration in this directory show a very simple usage of this region module. It simply call module that current region and ap-northeast-2 region. You can check modules outputs with `terraform plan` or `terraform output` commands

# Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Run `terraform destroy` when you don't need these resources.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_an2_region"></a> [an2\_region](#module\_an2\_region) | ../../ | n/a |
| <a name="module_current_region"></a> [current\_region](#module\_current\_region) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_an2_region"></a> [an2\_region](#output\_an2\_region) | outputs of ap-northeast-2 region |
| <a name="output_current_region"></a> [current\_region](#output\_current\_region) | outputs of current region |
