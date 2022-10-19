variable "network_interface_id" {
  type = string
  default = "eni-0631f0c76a0dd5af7"
}

variable "ami" {
    type = string
    default = "ami-0a59f0e26c55590e9"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}
