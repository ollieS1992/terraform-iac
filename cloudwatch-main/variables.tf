variable "region" {
    description = "Region where AWS resources will be deployed"
    type = string
}
variable "project_name" {
    description = "name of the project"
    type = string
}
variable "vpc_cidr" {
    description = "The subnet for the VPC"
    type = string
}
variable "public_subnet_az1_cidr" {
    description = "The subnet for the public_subnet_az1"
    type = string
}
variable "public_subnet_az2_cidr" {
    description = "The subnet for public_subnet_az2"
    type = string
}
variable "private_app_subnet_az1_cidr" {
    description = "The subnet for private_app_subnet_az1"
    type = string
}
variable "private_app_subnet_az2_cidr" {
    description = "The subnet for private_app_subnet_az2_"
    type = string 
}
variable "private_data_subnet_az1_cidr" {
    description = "The subnet for private_ata_subnet_az1_"
    type = string 
}
variable "private_data_subnet_az2_cidr" {
    description = "The subnet for private_data_subnet_az2"
    type = string 
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
