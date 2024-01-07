# Project Overview

## Prerequisites

### MongoDB Atlas

- **Account Creation**: Sign up for MongoDB Atlas if not already done and create an organization
- **API Key Generation**:
  - Navigate to `Organization settings`.
  - Select `Access Manager` and go to `API Keys`.
  - Click `Create API Key`, name it (e.g., "Terraform Integration"), and set appropriate permissions.
  - Securely note down the public and private keys.
- **Network Access Configuration**
  - On the same page, scroll down and click Add Access List Entry. If you are unsure of the IP address that you are running Terraform on (and you are performing this step from that machine), simply click Use Current IP Address and Save.

## Configuration

Rename the `terraform.tfvars.example` file to `terraform.tfvars` and fill in the variables as required.

## Terraform Code Alignment and Indentation in VS Code

To ensure proper formatting of Terraform code in Visual Studio Code, perform the following steps:

- Install Prettier and the HashiCorp Terraform extension in VS Code.
- Optionally, modify your `settings.json` in VS Code to include:
  ```json
  "[terraform]": {
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "hashicorp.terraform",
    "editor.tabSize": 2
  },
  "[terraform-vars]": {
    "editor.tabSize": 2
  }
  ```

## Useful Links

[How to Deploy MongoDB Atlas on GCP using Terraform](https://gmusumeci.medium.com/how-to-deploy-mongodb-atlas-on-gcp-using-terraform-3c88127c00d0)
