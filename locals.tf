locals {
    count                = 2
    all_ports            = 0
    ssh_port             = 22
    http_port            = 80
    app_port             = 8080
    db_port              = 3306
    protocol             = "tcp"
    any_protocol         = "-1"
    any_where            = "0.0.0.0/0"
    any_where_ipv6       = "::/0"
    key_name             = "Legion"
    default_desc         = "Created from Terraform"
    webserver_tags       = [ "Jenkins-Master", "Jenkins-Agent" ]
    subnet_tags          = [ "web1", "web2" ]
    env_prefix           = "from-tf"

}