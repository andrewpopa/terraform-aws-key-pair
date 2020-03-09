output "public_key" {
  description = "Public key name"
  value = aws_key_pair.generated_key.key_name
}

output "private_key_filename" {
  description = "Private key filename"
  value       = local.private_key_filename
}