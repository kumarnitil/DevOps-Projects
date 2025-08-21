# We will use this file to actually declare the values of the variables which are defined in the variable.tf file
# In Terraform, the var keyword is used to access the values of input variables within your configuration files.
# Here's a breakdown of how the var keyword works in Terraform:
# Declaring Input Variables: You define an input variable using a variable block, specifying its name, type, and other optional attributes like a description, default value, validation rules, or whether it's sensitive.
# Referencing Variables: Once an input variable is declared, you can refer to its value within your Terraform configuration using the syntax var.<variable_name>

region = "ap-south-1"
env = "dev"
project_name = "dev_infra"
subnet_id = "subnet-xxxxxx"
vpc_id = "vpc-xxxxxxx"