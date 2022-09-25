output "vpc_name" {
    value = var.vpc_name
  
}
output "environment" {
    value = var.environment
  
}
output "vpc_id" {
    value = aws_vpc.vpc_cgit.id
}
output "IGW" {
    value = aws_internet_gateway.Igw_cgit.id
}
output "PublicSubnet" {
    value = aws_subnet.Public_subnet.*.id
}
output "PrivateSubnet" {
    value = aws_subnet.Private_subnet.*.id
}
output "PublicSubnet_1" {
    value = aws_subnet.Public_subnet.0.id
}