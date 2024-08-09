////https://www.microfocus.com/documentation/arcsight/arcsight-platform-22.1/arcsight-admin-guide-22.1/Content/deployment_cloud/AWS_CLI_configure.htm
////
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-066e0ce59fb6af699"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
