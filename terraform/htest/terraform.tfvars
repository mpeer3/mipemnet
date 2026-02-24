privnets = {
  privnet-01 = {
    name     = "privnet-01"
    ip_range = "192.168.5.0/24"
  }
}
privsubnets = {
  privsubnet-01 = {
    name         = "privsubnet-01"
    privnets_key = "privnet-01"
    ip_range     = "192.168.5.0/27"
    type         = "cloud"
    network_zone = "eu-central"
  }

}
