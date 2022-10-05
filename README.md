# Terraform AWS Region Module

Terraform module for bring aws region name and code from current region 

## Usage

```
/* ----- Bring current region info ----- */
module "region" {
  source      = "../terraform-aws-region"
  region_name = var.region_name
}

/* ----- VPC ----- */
resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "RegionCode" = module.region.code
    "RegionName" = module.region.name
  }
}
```

## Requirements

|Name|Version|
|---|---|
| Terraform | >= 1.2.3 |
| hashicorp/aws | >= 4.0 |

## Providers

|Name|Version|
|---|---|
| hashicorp/aws | ~> 4.0 |

## Modules

No modules.

## Resources

No Resources.

## Inputs

| Name | Description |
| --- | --- |
| region_name | Name of region |

## Outputs

| Name | Description |
| --- | --- |
| name | Name of aws region |
| code | Code of aws region |
