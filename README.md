# terraform-aws-key-pair
Module to generate SSH key pairs for AWS

# Terraform version
This module was written and tested with Terraform v0.12.20

# Assumptions
- You need to generate SSH key pair in order to be able to access your AWS infrastructure
- You have access to AWS console where you can create you security credentials `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`
- You configured your security credentials as your environment variables `~/.bash_profile` 

```bash
export AWS_ACCESS_KEY_ID=XXXX
export AWS_SECRET_ACCESS_KEY=XXXX
export AWS_DEFAULT_REGION=XXXX
```

# How to consume

```bash
git clone git@github.com:andrewpopa/terraform-aws-key-pair.git
cd terraform-aws-key-pair
```

# Outputs
| **Name**  | **Type** | **Description** |
| ------------- | ------------- | ------------- |
| public_key_name | string | Public key name |
| public_key | string | Public key |
| private_key_filename | string | Private key filename |

As part of output `private key` file will be created locally in the folder where module is consumed.