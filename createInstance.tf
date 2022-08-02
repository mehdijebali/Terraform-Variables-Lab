
resource "aws_instance" "MyFirstInstnace" {
#  ami           = lookup(var.AMIS, var.AWS_REGION)
  ami = "ami-0b0ea68c435eb488d"
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstnce"
  }

#  security_groups = var.Security_Group
}