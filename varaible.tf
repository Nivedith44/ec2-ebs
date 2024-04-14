variable "instance_count" {
  default = "2"
}
variable "key_name" {
    type = string
  default = "your keypair"
}

variable "instance_type" {
    type = string
  default = "t2.micro"
}

variable "availability_zone" {
    type = string
  default = "eu-west-2a"
}
variable "ami_id" {
  default  = "ami-id"
}
variable "instance_name" {
  default = ["Terraform"]
}
