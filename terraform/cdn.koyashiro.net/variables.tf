variable "cloudflare_account_id" {
  type      = string
  sensitive = true
}

variable "cloudflare_api_token" {
  type      = string
  sensitive = true
}

variable "cloudflare_zone_id_koyashiro_net" {
  type      = string
  sensitive = true
}

variable "r2_bucket_name_cdn_koyashiro_net" {
  type      = string
  sensitive = true
}
