resource "cloudflare_r2_bucket" "r2_bucket" {
  account_id = var.cloudflare_account_id
  name       = var.r2_bucket_name_cdn_koyashiro_net
  location   = "APAC"
}
