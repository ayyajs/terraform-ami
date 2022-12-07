data "aws_ami" "New-AMI-With-Mysql" {
  most_recent = true
  owners      = ["self"]
  filter {
    name   = "name"
    values = var.value
  }
}

resource "aws_instance" "hemant" {
  ami           = data.aws_ami.New-AMI-With-Mysql.id
  instance_type = var.machinetype
  key_name      = "web"

  tags = {
    Name = "HelloWorld"
  }
}



