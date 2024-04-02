output "ec2_instance_type" {
    value = aws_instance.ec2_instance
}
output "ec2_sec_group"{
    value = aws_security_group.ec2_security_group
}
output "instance_ids" {
  value = aws_instance.ec2_instance.*.id
  description = "List of EC2 instance IDs"
}
