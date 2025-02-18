variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "this refers to RHEL AMI ID"

  
}

variable "instances" {
    default = ["mysql", "backend","frontend"]
  
}


variable "zone_id" {
  default = "Z035504836XDCDLGBQBS0"
}
variable "instance_type" {
    default = "t3.micro"
  
}

variable "ec2_tags"{
    type = map(string)
    default = {
        project = "expense"
        component = "backend"
        environment = "dev"
        Name = "expense-backend-dev"
    }
}

variable "from_port" {
    type = number
    default = 22
  
}

variable "domain_name" {
    default = "jnrc.online"
  
}


variable "to_port" {
    type = number
    default = 22
  
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
        Name = "expense-backend-dev"
    }
    
}

/* 
1. command line --> -var "<var-name>=<var-value>"
2. tfvars
3. env var
4. default values
5. user prompt */

