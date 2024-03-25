variable "vpc_cidr" {
    default = "10.0.0.0/16"
    type = string
}

variable "enable_dns_hostnames"{
default = true
type = bool
}

variable "comman_tags" {
    type = map
    default = {} #{}--> it means optional
}

variable "vpc_tags" {
    type = map
    default = {}
}

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "igw" {
    type = map
    default = {

    }
}

variable "public_subnet_cidr" {
    type = list
    validation {
        condition = length(var.public_subnet_cidr) ==2
        error_message = "please give 2 public subnet cidr"
    }
}

variable "public_subnet_tags"{
    default = { }
}

variable "private_subnet_cidr" {
    type = list
    validation {
        condition = length(var.private_subnet_cidr) ==2
        error_message = "please give 2 private subnet cidr"
    }
}

variable "private_subnet_tags"{
    default = { }
}

variable "database_subnet_cidr" {
    type = list
    validation {
        condition = length(var.database_subnet_cidr) ==2
        error_message = "please give 2 database subnet cidr"
    }
}

variable "database_subnet_tags"{
    default = { }
}

variable "aws_nat_gateway_tags"{
    default = { }
}

variable "public_route_table_tags"{
    default = { }
}

variable "private_route_table_tags"{
    default = { }
}

variable "database_route_table_tags"{
    default = { }
}

variable "is_peering_is_required" {
    type = bool
    default = false
}

variable "acceptor_vpc_id" {
    default = ""
    type = string
}

variable "vpc_peering_tags" {
    default = {}
}

