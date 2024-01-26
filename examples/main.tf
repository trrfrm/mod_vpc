module "mod_vpc" {

    source              = "git::https://github.com/trrfrm/mod_vpc.git"
    default_details     = {
      name              = "from-tf"
      region            = "ap-south-2"
    }
    vpc_details         = {
      name              = "vpc"
      cidr_block        = "10.0.0.0/16"
    }
    subnet_tags         = {
      names             = [ "web1", "web2" ]
    }
    webserver_info      = {
      name              = "webservers"
      key_name          = "deployment"
      instance_type     = "t3.micro"
      public_ip_enabled = true
    }
}

output "total_subnets" {
    value               = module.mod_vpc.subnet_count
}