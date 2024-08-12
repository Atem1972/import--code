provider "aws" {
    region = "us-east-1"
  
}

import {
  to = aws_instance.web
  id = "i-054d428c6ea152799"
}

  # terraform will real generate the state file
 /*resource "aws_instance" "web" {
  ami                                  = "ami-03972092c42e8c0ca"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b" 
  instance_type                        = "t2.medium"
  ipv6_address_count                   = 0
  key_name                             = "valery"
  monitoring                           = false
  security_groups                      = ["launch-wizard-3"]
  subnet_id                            = "subnet-07dceaf81154c4874"
  tags = {
    Name = "data-source"
  }
  
 
  }
  */