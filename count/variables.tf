variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
  default = "Z07771633R956JE564RLG"  
}

variable "domain_name" {
    default = "sivadevops.space"
}