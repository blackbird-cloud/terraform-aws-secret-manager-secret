output "secret" {
  value       = aws_secretsmanager_secret.secret
  description = "The generated AWS secret object"
}
