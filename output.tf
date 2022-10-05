output "region_name" {
  description = "Name of aws region"
  value       = local.region_name
}

output "region_code" {
  description = "Code of aws region"
  value       = local.region_code
}

output "availability_zone_names" {
  description = "List of availability zones name"
  value       = local.availability_zone_names
}

output "region_code_with_availability_zone" {
  description = "Code of aws region with az"
  value       = local.region_code_with_availability_zone
}
