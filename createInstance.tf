
resource "aws_instance" "MyFirstInstnace" {
#  ami           = lookup(var.AMIS, var.AWS_REGION)
  ami = "ami-0022f774911c1d690"
  instance_type = "t2.micro"

  tags = {
    Name = "demoinstnce"
  }

  security_groups = var.Security_Group
}