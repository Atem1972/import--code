provider "aws" {
    region = "us-east-1"
  
}



   # this import block is to ask terraform to go and get my resources from my instance that was created manually
import {
  to = aws_instance.web
  id = "i-03abf3bead3915984" #this instance i copy it from aws my instance  and past here
}
# first run the above code using terraform plan next run terraform plan terraform plan -generate-config-out=ec2.tf
# it will pull the bellow arguement
# this is the best way to modify instace we created manually in ec2 and pull it to terraform for modification

  
# this bellow is not important because the instance has been terminated. # to get this back run terraform plan -generate-config-out=ec2.tf
  # terraform will real generate the state file
 resource "aws_instance" "web" {
  ami                                  = "ami-03972092c42e8c0ca"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1b" 
  instance_type                        = "t2.medium"
  ipv6_address_count                   = 0
  key_name                             = "valery"
  monitoring                           = false
  security_groups                      = ["launch-wizard-4"]
  subnet_id                            = "subnet-07dceaf81154c4874"
  tags = {
    Name = "data-source"
  }
}
  # after arranging the resource  run terraform apply--auto-approve, it will go to aws and import my resource. run ls u will see ur state file
  # we can modify it ex, instead of t2.medium i change to t3.micro. run terraform plan i will go to aws and modify ur change
 
  
  