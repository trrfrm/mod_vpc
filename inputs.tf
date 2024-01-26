variable "default_details" {
    type            = object({
        name        = string
        region      = string
    })
    default         = {
        name        = "from-tf"
        region      = "ap-south-2"
    }
}

variable "vpc_details" {
    type            = object({
        name        = string
        cidr_block  = string
    })
    default         = {
        name        = "tf-vpc"
        cidr_block  = "10.10.0.0/16"
    }
}

variable "subnet_tags" {
    type      = object({
        names = list(string)
    })
}

variable "webserver_info" {
    type                        = object({
        name                    = string
        key_name                = string
        instance_type           = string
        public_ip_enabled       = bool        
    })
    default                     = {
        name                    = "webservers"
        key_name                = "deployment"
        instance_type           = "t3.micro"
        public_ip_enabled       = true
    }
}