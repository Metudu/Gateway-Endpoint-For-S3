// Region
variable "aws_region" {
  default = "eu-central-1"
}

// VPC
variable "vpc-cidr-block" {
  default = "10.0.0.0/16"
}

variable "vpc-name" {
  default = "Terraform-VPC"
}

// Public Subnet
variable "public-subnet-cidr-block" {
  default = "10.0.1.0/24"
}

variable "public-subnet-name" {
  default = "Public-Subnet" 
}

// Private Subnet
variable "private-subnet-cidr-block" {
  default = "10.0.2.0/24"
}

variable "private-subnet-name" {
  default = "Private-Subnet" 
}

// Security Group
variable "sg-name" {
  default = "SSH Access"
}

variable "sg-description" {
	default = "SG Created by Terraform"
}

variable "sg-tag-name" {
	default = "SSH Access SG"
}

// EC2 Instances
variable "instance-ami" {
	default = "ami-0669b163befffbdfc" // Amazon Linux in eu-central-1
}

variable "instance-type" {
	default = "t2.micro"
}

variable "public-instance-name" {
	default = "Public Instance"
}

variable "private-instance-name" {
	default = "Private Instance"
}

// Internet Gateway
variable "igw-name" {
	default = "Terraform-IGW"
}

// Route Tables
variable "public-rt-name" {
	default = "Public-RT"	
}

variable "private-rt-name" {
	default = "Private-RT"
}

// IAM Role
variable "iam-role-name" {
    default = "Terraform-Role"
}

variable "iam-role-tag-name" {
    default = "Terraform-Role"
}

// IAM Instance Profile Name
variable "iam-instance-profile-name" {
    default = "Terraform-Instance-Profile"
}

// S3
variable "s3-bucket-tag-name" {
    default = "Terraform S3 Bucket"
}

// Key Pair
variable "key-pair-name" {
    default = "key-pair"
}