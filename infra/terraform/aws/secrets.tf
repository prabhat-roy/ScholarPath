resource "aws_kms_key" "scholarpath" {
  description             = "ScholarPath ${var.environment} KMS key (FERPA encryption-at-rest)"
  deletion_window_in_days = 30
  enable_key_rotation     = true
}

resource "aws_kms_alias" "scholarpath" {
  name          = "alias/scholarpath-${var.environment}"
  target_key_id = aws_kms_key.scholarpath.id
}

resource "aws_secretsmanager_secret" "pg" {
  name       = "scholarpath/${var.environment}/postgres"
  kms_key_id = aws_kms_key.scholarpath.arn
}

resource "aws_secretsmanager_secret_version" "pg" {
  secret_id = aws_secretsmanager_secret.pg.id
  secret_string = jsonencode({
    username = aws_db_instance.postgres.username
    password = random_password.pg.result
    host     = aws_db_instance.postgres.address
    port     = aws_db_instance.postgres.port
    dbname   = aws_db_instance.postgres.db_name
  })
}
