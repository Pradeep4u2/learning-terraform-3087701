variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}
  varialbe "ami_filter"  {
  description = "Name Filter and Owner for AMI"

  type = object({
    name = string
    owner = string
  })

  default = {
  name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
  owner = "979382823631" # Bitnami
  }

}

variable environment {
  description = "Development Envirpnment"

  type = object ({
  name = string
  newtwork_prefix = string
  })

  default = {
    name = "dev"
    cidr = "10.0"
  }
}

variable "asg_min_size" {
  description = "Minimum No of Instances in ASG"
  default = 1
}

variable "asg_max_size" {
  description = "Maximum No of Instances in ASG"
  default = 2
}
  

