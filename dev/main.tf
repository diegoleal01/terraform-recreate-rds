data "aws_db_snapshot" "prd_rds_snapshot" {
  most_recent            = true
  db_instance_identifier = "prd"
}

resource "aws_db_instance" "rds_dev" {
  instance_class         = var.instance_class
  identifier             = var.rds_identifier
  snapshot_identifier    = data.aws_db_snapshot.prd_rds_snapshot.id
  allocated_storage      = var.rds_storage
  vpc_security_group_ids = var.security_group
  availability_zone      = var.availability_zone
  skip_final_snapshot    = true
}