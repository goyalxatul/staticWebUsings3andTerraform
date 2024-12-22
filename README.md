# DevOps Project: Static Website Deployment on AWS S3 using Terraform
![Project Banner](./project.jpg)

## Overview

This project demonstrates how to use **Terraform** to deploy a static website on **AWS S3**. The infrastructure-as-code (IaC) approach automates the provisioning and management of resources, ensuring consistency and scalability.

---

## Features

- **AWS S3**: Used to host the static website.
- **Terraform**: Automates the creation and configuration of S3 buckets.
- **Static Website Hosting**: Configured with a custom error page.
- **IAM Roles**: Configured for secure access.
- **Versioning**: Enabled to maintain file history.
- **Access Control**: Fine-tuned bucket policies for public access to website files.

---

## Prerequisites

Ensure the following tools are installed on your local machine:

1. [Terraform](https://www.terraform.io/downloads.html) (v1.5+)
2. [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) (v2)
3. **AWS Account**: With access keys configured locally via `aws configure`.

---

## Project Structure

project-folder/ ├── main.tf # Terraform configuration for resources ├── variables.tf # Input variables for the project ├── outputs.tf # Outputs for the Terraform script ├── error.html # Custom error page for the website ├── index.html # Home page for the static website └── README.md # Project documentation


---

## Configuration Steps
1. 
```bash
git clone <repository-url>
cd project-folder

Update Variables
Modify variables.tf to customize the configuration:

Bucket Name: Update the bucket_name variable.
Region: Ensure the AWS region matches your requirements.

3. Initialize Terraform
bash
Copy code
terraform init

4. Plan the Infrastructure
Review the changes Terraform will make:

bash
Copy code
terraform plan

5. Apply the Configuration
Deploy the infrastructure:

bash
Copy code
terraform apply

6. Verify Deployment
Navigate to the S3 bucket in the AWS Management Console.
Access the static website URL provided in the Terraform output.


## File Breakdown
1. main.tf
Defines the S3 bucket, bucket policy, and static website hosting configuration.

2. variables.tf
Contains customizable variables for project flexibility.

3. outputs.tf
Displays outputs such as the S3 website endpoint after deployment.

4. index.html and error.html
Basic HTML files for the website and error handling.

Clean-Up
To delete the resources created by Terraform:

bash
Copy code
terraform destroy
Challenges Faced
Configuring bucket policies for public access.
Managing sensitive credentials securely using environment variables.
Future Improvements
Add CloudFront for content delivery and HTTPS support.
Integrate with GitHub Actions for CI/CD pipeline automation.
Implement monitoring using AWS CloudWatch.
