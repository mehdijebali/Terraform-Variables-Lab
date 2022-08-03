variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "us-east-1"
}

variable "AMI_ID" {
default = "ami-0b0ea68c435eb488d"
}

variable "INSTANCE_TYPE" {
default = "t2.micro"  
}

variable "INSTANCE_NAME" {
default = "demoinstance"
}

variable "Security_Group"{
   type = list
   default = ["sg-24076", "sg-90890", "sg-456789"]
}

variable "AMIS" {
   type = map
   default = {
       us-east-1 = "ami-0b0ea68c435eb488d"
       us-east-2 = "ami-05692172625678b4e"
       us-west-2 = "ami-0352d5a37fb4f603f"
       us-west-1 = "ami-0f40c8f97004632f9"
   }
}