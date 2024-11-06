#vpc variable
variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "CIDR block for the VPC"
  type        = string
}

# availability_zone A
variable "availability_zone_A" {
  default     = "eu-west-2a"
  description = "Availability zone for the eu-west-2a"
  type        = string
}

# availability_zone B
variable "availability_zone_B" {
  default     = "eu-west-2b"
  description = "Availability zone for the eu-west-2b"
  type        = string
}





#public_subnet_az1_cidr
variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "CIDR block for Public Subnet AZ1"
  type        = string
}

#public_subnet_az2_cidr
variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "CIDR block for Public Subnet AZ2"
  type        = string
}


#private_app_subnet_az1_cidr
variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "CIDR block for Private app Subnet AZ1"
  type        = string
}

#private_app_subnet_az2_cidr
variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "CIDR block for Private app Subnet AZ1"
  type        = string
}

#private_data_subnet_az1_cidr
variable "private_data_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "CIDR block for Private data Subnet AZ1"
  type        = string
}

#private_data_subnet_az2_cidr
variable "private_data_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "CIDR block for Private data Subnet AZ2"
  type        = string
}


# Security Groups Variables
variable "ssh_location" {
  default     = "0.0.0.0/0"
  description = "IP address that can SSH into the instances"
  type        = string
}


# RDS Variables
variable "database_snapshot_identifier" {
  default     = "arn:aws:rds:eu-west-2:651271204467:snapshot:showwise"
  description = "Database snapshot identifier"
  type        = string
}

#Define a Variable for the Database Instance Class:
variable "database_instance_class" {
  default     = "db.t3.micro"
  description = "Instance class for the RDS database"
  type        = string
}

#Define a Variable for the Database Instance Identifier:
variable "database_instance_identifier" {
  default     = "dev-rds-db"
  description = "Identifier for the RDS database instance"
  type        = string
}

#Define a Variable for Multi-AZ Deployment:
variable "multi_az_deployment" {
  default     = false
  description = "Enable Multi-AZ deployment for RDS"
  type        = bool
}


# Application Load Balancer Variables
#SSL certificate
variable "ssl_certificate_arn" {
  description = "The ARN of the SSL certificate for the ALB"
  type        = string
  default     = "arn:aws:acm:eu-west-2:651271204467:certificate/4c45b3f9-0b23-497f-897f-ed9a5e1d19cf"
}

# SNS notifications
variable "operator_email" {
  description = "The email address to receive SNS notifications."
  type        = string
  default     = "henry4we2008@gmail.com"
}

# Auto scaling group variable

#Launch Template Name
variable "launch_template_name" {
  description = "The name of the launch template for the Auto Scaling group."
  type        = string
  default     = "dev-launch-template"
}

# AMI ID
variable "ami_id" {
  description = "The ID of the AMI to use for the instances."
  type        = string
   default    ="ami-0f6211640b4f70044"
   #default     = "ami-0190cc606dff9fde6"
}
#Instance Type
variable "instance_type" {
  description = "The type of instance to use for the Auto Scaling group."
  type        = string
  default     = "t2.micro"
}

#Key Pair Name
variable "key_pair_name" {
  description = "The name of the existing EC2 key pair."
  type        = string
  default     = "myKey"
}