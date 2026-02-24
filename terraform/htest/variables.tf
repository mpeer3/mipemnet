variable "privnets" {
  type = map(object({
    name     = string
    ip_range = string

  }))


}
variable "privsubnets" {
  type = map(object({
    name         = string
    privnets_key = string
    network_zone = string
    ip_range     = string
    type         = string
  }))


}
