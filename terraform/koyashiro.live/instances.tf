resource "vultr_instance" "instance" {
  region      = "nrt" # Tokyo
  plan        = "vhp-1c-1gb-intel"
  os_id       = 1743 # Ubuntu 22.04 LTS x64
  label       = "koyashiro.live"
  hostname    = "koyashiro.live"
  enable_ipv6 = true
}
