#### Project ####
variable "project_name" {
    type = string
}
variable "environment" {
    type = string
}
#### vpc ####
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
    type = bool
    default = true 
}
variable "common_tags" {
    type = map
}
variable "vpc_tags" {
    type = map
    default = {}
}

#### igw ####
variable "igw_tags" {
    type = map
    default = {}
}
#### public subnet ####
variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "please give 2 valid public subent cidr"
    }
}
variable "public_subnet_tags" {
    type = map
    default = {}
}
#### private subnet ####
variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "please give 2 valid private subent cidr"
    }
}
variable "private_subnet_tags" {
    type = map
    default = {}
}
#### database subnet ####
variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "please give 2 valid database subent cidr"
    }
}
variable "database_subnet_tags" {
    type = map
    default = {}
}
variable "database_subnet_group_tags" {
    type = map
    default = {}
}

#### NAT gateway ####
variable "nat_gateway_tags" {
    type = map
    default = {}
}
#### Routable ####
variable "public_route_table_tags" {
    type = map 
    default = {}
}
variable "private_route_table_tags" {
    type = map 
    default = {}
}
variable "database_route_table_tags" {
    type = map 
    default = {}
}

#### peering
variable "is_peering_required" {
    type = bool
    default = false
}
variable "acceptor_vpc" {
    type = string
    default = ""
}
variable "peering_tags" {
    type = map
    default = {}
}