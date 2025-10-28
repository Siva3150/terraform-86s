variable "instances" {
   default = [ "mongodb", "redis", "mysql", "rabbitmq" ]

    #default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]

    
    # default = {
    #   mongodb = "t3.micro"
    #   redis = "t3.micro"
    #   mysql = "t3.small"
    #   rabbitmq = "t3.micro"
    # }
}

variable "zone_id" {
  default = "Z07771633R956JE564RLG"  
}

variable "domain_name" {
    default = "sivadevops.space"
}

# explanation 

# If your variable is defined like this:

# variable "instances" {
#   default = ["web", "catalogue", "cart"]
# }

# Then after toset(), Terraform internally converts it into a set of strings:

# toset(["web", "catalogue", "cart"]) = {
#   "web",
#   "catalogue",
#   "cart"
# }


# When Terraform loops over this set, each element becomes a value only — there is no key because a set doesn’t have key–value pairs.

# So:

# each.key → not available (it’s just the index internally)

# each.value → holds the element itself, e.g. "web", "catalogue", "cart"

# That’s why you must use:

# Name = each.value
