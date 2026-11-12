# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  default     = "eu-north-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "Provisioned by Terraform"
}

variable "aws_ami" {
  description = "Konfiguracja obrazów AMI dla różnych systemów"
  type = object({
    ubuntu = object({
      id = string
    })
  })
  default = {
    ubuntu = {
      id = "ami-021aaf3749be66813"
    }
  }
}
  
