resource "random_pet" "this" {
  length = 3
}

resource "tls_private_key" "tf-key" {
  algorithm   = "RSA"
  ecdsa_curve = "4096"
}

resource "aws_key_pair" "generated_key" {
  key_name   = random_pet.this.id
  public_key = tls_private_key.tf-key.public_key_openssh
}

resource "local_file" "private_key_pem" {
  sensitive_content  = tls_private_key.tf-key.private_key_pem
  filename = "${random_pet.this.id}.pem"
  file_permission   = "0600"
}