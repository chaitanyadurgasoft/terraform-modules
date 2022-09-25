output "Publicserver" {
  value=aws_instance.Public_servers.*.id
}
output "Privateserver" {
  value=aws_instance.Private_servers.*.id
}