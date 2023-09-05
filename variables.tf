variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "instance_subnet" {
    description = "Default subnet to use when creating new instances"
    default     = "subnet-07ab632f0767b06e7"
}

variable "instance_subnet_2" {
    description = "Default 2nd subnet to use when creating new instances"
    default     = "subnet-04bbe57ab1ab606e1"
}

variable "default_vpc" {
    description = "Default vpc to use for this terraform Learning"
    default     = "vpc-0b91ca3b9fa0c6020"
}

variable "ami_filter" {
    description = "Name filter and owner for AMI"

    type = object({
        name  = string
        owner = string
    })

    default = {
        name  = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
        owner = "979382823631" # Bitnami
    }
}

variable "environment" {
    description = "Development environment"

    type = object ({
        name = string
        network_prefix = string
    })

     default = {
        name = "dev"
        network_prefix = "10.0"
    }
}

variable "min_instances" {
    description = "Minimum number of instances in the ASG"

    default = 1
}

variable "max_instances" {
    description = "Maximum number of instances in the ASG"

    default = 2
}
