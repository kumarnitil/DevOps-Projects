variable "region" {
    description = "AWS region"
    type = string
}
variable "env" {
    description = "Environment name"
    type = string
}
variable "project_name" {
    description = "Project Name"
    type = string
}
variable "subnet_id" {
    description = "Subnet ID where the EC2 will be deployed"
    type = string
}
variable "vpc_id" {
    description = "VPC ID"
    type = string
}

# Thus in this terraform file we have declared 5 variable names only
# Please see in this file we are just giving the variable names and the variable types
# The value of the variables will be provided by some other file.