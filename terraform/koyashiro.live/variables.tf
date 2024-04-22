variable "cloudflare_api_token" {
  type      = string
  sensitive = true
}

variable "cloudflare_zone_id_koyashiro_live" {
  type      = string
  sensitive = true
}

variable "ipv4_koyashiro_live" {
  type      = string
  sensitive = true
}

variable "ipv6_koyashiro_live" {
  type      = string
  sensitive = true
}
