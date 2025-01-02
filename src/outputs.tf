output "artifact_credential" {
  sensitive = true
  value = {
    data = {
      infrastructure = {
        dns_name = var.endpoint.data.infrastructure.dns_name
      }
      authentication = {
        ca_certificate     = var.endpoint.data.authentication.ca_certificate_pem
        client_certificate = tls_locally_signed_cert.client.cert_pem
        client_private_key = tls_private_key.client.private_key_pem
      }
    }
    specs = {
      expiration = tls_locally_signed_cert.client.validity_end_time
    }
  }
}
