variable "hcloud_token" {
  sensitive = true

}
provider "hcloud" {
  token = var.hcloud_token
}
resource "hcloud_server" "test" {
  name        = "testserver"
  image       = "ubuntu-24.04"
  server_type = "cpx22"
}
