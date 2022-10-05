data "aws_region" "this" {
  name = var.region_name
}

data "aws_availability_zones" "available_zones" {
  state = "available"
}

locals {
  region_code_map = {
    "us-east-1"      = "ue1"
    "us-east-2"      = "ue2"
    "us-west-1"      = "uw1"
    "us-west-2"      = "uw2"
    "ap-east-1"      = "ae1"
    "ap-south-1"     = "as1"
    "ap-northeast-1" = "an1"
    "ap-northeast-2" = "an2"
    "ap-northeast-3" = "an3"
    "ap-southeast-1" = "ase1"
    "ap-southeast-2" = "ase2"
    "ap-southeast-3" = "ase3"
    "ca-central-1"   = "cc1"
    "eu-central-1"   = "ec1"
    "eu-west-1"      = "ew1"
    "eu-west-2"      = "ew2"
    "eu-west-3"      = "ew3"
    "eu-south-1"     = "es1"
    "eu-north-1"     = "en1"
    "me-central-1"   = "mc1"
    "me-south-1"     = "ms1"
    "af-south-1"     = "afs1"
    "sa-east-1"      = "se1"
  }
}

locals {
  region_name                        = data.aws_region.this.name
  region_code                        = lookup(local.region_code_map, local.region_name)
  availability_zone_names            = length(var.availability_zones) > 0 ? [for az in var.availability_zones : join("", [local.region_name, az])] : data.aws_availability_zones.available_zones.names
  region_code_with_availability_zone = length(var.availability_zones) > 0 ? [for az in var.availability_zones : join("", [local.region_code, az])] : [for az in data.aws_availability_zones.available_zones.names : join("", [lookup(local.region_code_map, local.region_name), substr(az, -1, -1)])]
}
