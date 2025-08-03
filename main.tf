provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0583c2579d6458f46"
instance_type = "t2.medium"
key_name = "netflix"
vpc_security_group_ids = ["sg-022ea72f377e55197"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
