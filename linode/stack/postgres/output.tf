output "db_id" {
  value = module.postgres.id
}

output "db_host" {
  value = module.postgres.host_primary
}

output "db_port" {
  value = module.postgres.port
}

output "db_username" {
  value = module.postgres.username
}