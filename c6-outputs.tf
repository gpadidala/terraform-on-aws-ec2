# Terraform Output Values
/*output "instance_publicip" {
 description = "EC2 Instance Public IP"
  value = aws_instance.myec2vmt.public_ip
} */

output "instance_publicip" {
 description = "EC2 Instance Public IP list"
  value = [for instance in aws_instance.myec2vmt: instance.public_dns]
}
#output "insatance_publicip_map" {
 # description = "EC2 instance DNS with map"
  #value = {for instance in aws_instance.myec2vmt: insatance => insatance.public_dns}
  
#}
output "for_output_map2" {
  description = "Fro loop with advance map"
  value = {for c, insatance in aws_instance.myec2vmt: c => insatance.public_dns}
  
}

output "legecy_split_instance_publicdns" {
  description = "legecy Split Operater "
  value = aws_instance.myec2vmt.*.public_dns
  
}

output "latest_split_instance_publicdns" {
  description = "legecy Split Operater "
  value = aws_instance.myec2vmt[*].public_dns
  
}
#output "instance_publicdns" {
 # description = "EC2 Instance Public DNS"
  #value = aws_instance.myec2vmt.public_dns
#}
#output "instance_type" {
    #description = "get the EC2 instance type"
   # value = aws_instance.myec2vmt.instance_type
  
#}
