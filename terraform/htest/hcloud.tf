variable "hcloud_token" {
  sensitive = true

}
provider "hcloud" {
  token = var.hcloud_token
}
#resource "hcloud_server" "test" {
#  name        = "testserver"
#  image       = "ubuntu-24.04"
#  server_type = "cpx22"
#}

resource "hcloud_network" "privnets" {
  for_each = var.privnets
  name     = each.value.name
  ip_range = each.value.ip_range
}
resource "hcloud_network_subnet" "privsubnets" {
  for_each     = var.privsubnets
  network_id   = hcloud_network.privnets[each.value.privnets_key].id
  type         = each.value.type
  network_zone = each.value.network_zone
  ip_range     = each.value.ip_range
}
