
resource "aws_secretsmanager_secret" "RSsecret" {
  name        = var.SMname
  description = "${var.project_name}-smng key"
/*   lifecycle {
    prevent_destroy = true
  } */
}

resource "aws_secretsmanager_secret_version" "RSsecretmanager" {
secret_id     = aws_secretsmanager_secret.RSsecret.id
secret_string = jsonencode({
rs_database_name   = var.rs_database_name
username    = var.RS_username
password    = var.RS_password
  })
}

