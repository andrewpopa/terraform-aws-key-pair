output "public_key_name" {
  description = "Public key name"
  value = aws_key_pair.generated_key.key_name
}

output "public_key" {
  description = "Public key"
  value = aws_key_pair.generated_key.public_key
}

output "private_key_filename" {
  description = "Private key filename"
  value       = local_file.private_key_pem.filename
}