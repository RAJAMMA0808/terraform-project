variable "subnet_id" {
  description = "Subnet ID for EC2"
  type        = string
}

variable "environment" {
  type = string
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id

  tags = {
    Name = "${var.environment}-ec2"
  }
}

output "ec2_id" {
  value = aws_instance.web.id
}

output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}
