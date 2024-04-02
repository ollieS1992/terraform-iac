variable "ec2_1_subnet" {
    description = "subnet the EC2 instance will be deployed"
    type = string
}
variable "vpc_id" {
    description = "The ID of the VPC thats created"
}
variable "ec2_instance_type" {
    description = "The EC2 instance type"
    type = string
}
variable "sec_rule1_inbound_port" {
    description = "Allow port x inbound"
    type = number
}
variable "sec_rule1_outbound_port" {
    description = "Allow port x outbound"
    type = number
}
variable "sec_rule1_protocol" {
    description = "Set either TCP/UDP for sec rule1"
    type = string
}
variable "sec_rule1_description" {
    description = "The description for sec rule1"
    type = string
}
variable "sec_rule2_inbound_port" {
     description = "Allow port x inbound"
     type = number
}
variable "sec_rule2_outbound_port" {
     description = "Allow port x outbound"
     type = number
}
variable "sec_rule2_protocol" {
    description = "Set either TCP/UDP for sec rule2"
    type = string
}
variable "sec_rule2_description" {
    description = "The description for sec rule2"
    type = string
}
variable "instance_count" {
    description = "sets how many instances to deploy"
    type = number 
}