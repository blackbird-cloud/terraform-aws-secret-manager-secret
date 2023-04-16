resource "aws_secretsmanager_secret" "secret" {
  name = var.name

  kms_key_id = var.kms_key_id
  policy     = var.policy
}

resource "random_password" "password" {
  count  = var.generate_secret_password ? 1 : 0
  length = 20
  upper  = true
  lower  = true
}

resource "aws_secretsmanager_secret_version" "secret" {
  secret_id = aws_secretsmanager_secret.secret.id
  secret_string = var.generate_secret_password ? jsonencode({
    username = var.username
    password = random_password.password[0].result
  }) : jsonencode(var.secret_value)
}
