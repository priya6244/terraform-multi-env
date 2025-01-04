variable "instances" {
  type        = map
}

variable "zone_id" {
    default = "Z041715728LF1PXBKQNOM"
}

variable "domain_name" {
    default = "haridev.online"
}

variable "common_tags" {
  default = {
    Project = "expense"
    Terraform = "true"
  }
}

variable "tags" {
    type = map
}

variable "environment" {
    
}
