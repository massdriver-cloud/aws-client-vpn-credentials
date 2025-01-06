# AWS Client VPN Credentials Operator Guide

This guide provides instructions for setting up and using the credentials and configuration files required to connect to an AWS Client VPN Endpoint. It includes steps for installing a VPN client, downloading the necessary configuration files, and connecting to the VPN securely.

## Setup

### Install a VPN Client

To connect to the AWS Client VPN, you need to install a supported VPN client. Below are recommended options based on your operating system:

- **Windows**: [AWS Client VPN for Windows](https://d20adtppz83p9s.cloudfront.net/WPF/latest/AWS_VPN_Client.msi)
- **macOS**: [AWS Client VPN for macOS](https://d20adtppz83p9s.cloudfront.net/OSX/latest/AWS_VPN_Client.pkg)
- **Linux**: [AWS Client VPN for Linux](https://docs.aws.amazon.com/vpn/latest/clientvpn-user/client-vpn-connect-linux-install.html)
- **Cross**-Platform: [OpenVPN Connect](https://openvpn.net/client/)

Ensure the VPN client you choose supports .ovpn files or separate certificate-based configuration.

### Download the Client Configurations

Follow these steps to retrieve the necessary files for connecting to the VPN:

#### Access the Credentials Artifact

- Navigate to the deployed AWS Client VPN Credentials bundle in the Massdriver dashboard.
- Open the Artifacts tab.
- Download the available configuration package. This typically includes:
  - Client Config (`.ovpn`)
  - CA Certificate (`.pem`)
  - Client Certificate (`.pem`)
  - Client Private Key (`.pem`)

#### Verify the Files

- Ensure the downloaded files match your organization’s VPN configuration requirements.
- Keep the files in a secure location, as they contain sensitive information.

### Configure the VPN Client

Once you have installed a VPN client and downloaded the configuration files, follow these steps to set up the connection:

#### Load the .ovpn File

- Import the `.ovpn` file into your chosen VPN client application.
- This file consolidates all necessary configuration and certificate data for most setups.

Alternatively:

- If your client requires separate certificate files:
- Use ca-cert.pem, client-cert.pem, and client-key.pem as required by the client.

### Connect to the VPN

1. Open the VPN client application.
2. Select the imported configuration profile.
3. Initiate the connection using the client interface.
4. Verify that the connection has been established by accessing a resource or endpoint within the VPN’s scope.

## Troubleshooting

### Connection Issues

- Verify that your `.ovpn` file or certificate files are correctly imported.
- Ensure that the VPN client application has permission to access your network.

### Credential Errors

- If you experience issues, re-download the configuration files from the Massdriver dashboard.

## Security Best Practices

### Secure File Storage

- Store the `.ovpn` file and certificates in a secure, access-controlled location.
- Do not share the credentials with unauthorized users.

### Credential Rotation

- Periodically update your client credentials in accordance with your organization’s security policies.

### Client Application Updates

- Keep your VPN client application updated to ensure compatibility and security.
