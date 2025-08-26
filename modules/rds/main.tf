variable "environment" {
  type = string
}

resource "aws_db_instance" "default" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "admin12345"
  skip_final_snapshot  = true

  tags = {
    Name = "${var.environment}-rds"
  }
}

output "rds_endpoint" {
  value = aws_db_instance.default.endpoint
}
