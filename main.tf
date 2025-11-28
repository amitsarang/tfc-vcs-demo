terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 5.0"

    }

  }

 

  cloud {

    organization = "amit-demo-organization"

    workspaces {

      name = "tfc-vcs-amit-demo-ws"

    }

  }

}

 

provider "aws" {

  region = "us-east-1"

}

 

resource "aws_s3_bucket" "demo" {

  bucket = "tfc-cli-demo-amit-bucket-112"

}
