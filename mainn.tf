provider "aws" {
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
    region = var.region
}

resource "aws_instance" "example_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = "ExampleInstance"
    }
}