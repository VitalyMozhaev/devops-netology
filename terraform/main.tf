# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

# Поиск ami образа последнего Ubuntu
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  owners = ["099720109477"] # Canonical
}

# Создаём ресурс ec2 instance
resource "aws_instance" "netology_test" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  count = 1
  cpu_core_count = 1
  cpu_threads_per_core = 1
  disable_api_termination = false
  hibernation = true
  instance_initiated_shutdown_behavior = "stop"
  monitoring = true
  associate_public_ip_address = true
  
  tags = {
    Name = "Hello_World_Netology"
  }
}

# Добавляем data-блоки
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}
