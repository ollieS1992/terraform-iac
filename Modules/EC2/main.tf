# use data source to get all avalablility zones in region
data "aws_availability_zones" "available_zones" {}


# create security group
resource "aws_security_group" "ec2_security_group" {
  name        = "ec2 security group"
  description = "define required secuirty groups"
  vpc_id      = var.vpc_id

  ingress {
    description      =  var.sec_rule1_description
    from_port        =  var.sec_rule1_inbound_port
    to_port          =  var.sec_rule1_outbound_port
    protocol         =  var.sec_rule1_protocol
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      =  var.sec_rule2_description
    from_port        =  var.sec_rule2_inbound_port
    to_port          =  var.sec_rule2_outbound_port
    protocol         =  var.sec_rule2_protocol
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags   = {
    Name = "Allow SSH and HTTP"
  }
}


# use data source to get a registered amazon linux 2 ami
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]
  
  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


# launch the ec2 instance 
resource "aws_instance" "ec2_instance" {

  count                  = var.instance_count
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = var.ec2_instance_type
  subnet_id              = var.ec2_1_subnet
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
  
 

  tags = {
    Name = "MyProject"
  }
}


