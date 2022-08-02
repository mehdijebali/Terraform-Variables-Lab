
resource "aws_instance" "MyFirstInstnace" {
#  ami           = lookup(var.AMIS, var.AWS_REGION)
  ami = var.AMI_ID
  instance_type = var.INSTANCE_TYPE

  tags = {
    Name = var.INSTANCE_NAME
  }

#  security_groups = var.Security_Group
}