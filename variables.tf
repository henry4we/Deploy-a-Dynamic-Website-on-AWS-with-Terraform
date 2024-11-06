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
