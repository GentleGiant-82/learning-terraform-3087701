variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "instance_subnet" {
    description = "Default subnet to use when creating new instances"
    default     = "subnet-07ab632f0767b06e7"
}

variable "default_vpc" {
    description = "Default vpc to use for this terraform Learning
    default     = "vpc-0b91ca3b9fa0c6020"
}