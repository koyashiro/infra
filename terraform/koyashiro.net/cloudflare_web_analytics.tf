resource "cloudflare_web_analytics_site" "koyashiro_net" {
  account_id   = var.cloudflare_account_id
  zone_tag     = var.cloudflare_zone_id_koyashiro_net
  auto_install = true
}
