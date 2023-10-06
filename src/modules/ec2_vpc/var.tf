#EC2 VARIABLES
variable "instancetype" {
  default = {
    demo = "t2.micro"
  }
  type = map(string)
}

variable "instance_names" {
  default = {
    demo = "demo_instance"
  }
  type = map(string)
}

variable "demo_environment" {
  default = ["test", "prod", "demo"]
  type    = list(string)
}

#VPC VARIABLES
variable "cidrs" {
  default = {
    vpc_cidr             = "10.10.0.0/16",
    demo_subnet_private1 = "10.10.1.0/24",
    demo_subnet_private2 = "10.10.2.0/24"
  }

  type        = map(string)
  description = "vpc cidr blocks"
  sensitive   = true
}

variable "vpc_names" {
  default = {
    vpc     = "demo_vpc",
    subnet1 = "demo_private_subnet_1",
    subnet2 = "demo_private_subnet_2"
  }

  type        = map(string)
  description = "vpc names"
}

#SECURITY GROUP VARIABLES
variable "demosg_name" {
  default     = "demo_security_group"
  type        = string
  description = "allow ssh on port 233"
}

variable "custom_ssh" {
  default   = 233
  sensitive = true
  type      = number
}

variable "web" {
  default   = 80
  sensitive = true
  type      = number
}

variable "all" {
  default   = 0
  sensitive = true
  type      = number
}

variable "sg_out_protocol" {
  default     = -1
  description = "allow all traffic to leave"
  type        = number
}

variable "sg_in_protocol" {
  default     = "tcp"
  description = "allow only tcp traffic in"
  type        = string
}

variable "sg_cider" {
  default     = ["0.0.0.0/0"]
  description = "allow traffic from everywhere"
  sensitive   = true
  type        = list(string)
}

variable "rt_cidr" {
  default = "0.0.0.0/0"
  type    = string
}

variable "demort_name" {
  default = "demo-route-table"
  type    = string
}
variable "demogw_name" {
  default = "demo-gateway"
  type    = string
}