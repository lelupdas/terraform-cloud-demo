# Create EC2 Instance - Amazon Linux
resource "aws_instance" "lelup-ec2-vm" {
  count         = 1
  ami           = var.myami["ap-south-1"]
  instance_type = var.instance_type
  key_name      = "mykey"
  #  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    env  = "dev"
    Name = var.hostname[count.index]
  }
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}