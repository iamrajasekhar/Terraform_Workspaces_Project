resource "aws_instance" "TF_Workspace" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "TF_Demo"
    Env = "Prod"
  }
}