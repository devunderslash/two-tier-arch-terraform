resource "aws_db_instance" "two_tier_db" {
  allocated_storage   = 5
  engine              = "mysql"
  engine_version      = "8.0"
  instance_class      = "db.t2.micro"
  db_name             = "two_tier_db"
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}

resource "aws_db_parameter_group" "two_tier_pg" {
  name   = "rds-pg"
  family = "mysql8.0"

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}