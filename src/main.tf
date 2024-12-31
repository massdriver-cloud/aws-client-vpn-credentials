resource "tls_private_key" "client" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

resource "tls_cert_request" "client" {
  private_key_pem = tls_private_key.client.private_key_pem

  subject {
    common_name  = "${var.md_metadata.name_prefix}-client"
    organization = var.md_metadata.name_prefix
  }
  # dns_names = ["does.not.matter.invalid"]
}

resource "tls_locally_signed_cert" "client" {
  cert_request_pem      = tls_cert_request.client.cert_request_pem
  ca_private_key_pem    = var.endpoint.private_key_pem // connection
  ca_cert_pem           = var.endpoint.cert_pem // connection
  validity_period_hours = var.validity_hours
  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "client_auth",
  ]
}