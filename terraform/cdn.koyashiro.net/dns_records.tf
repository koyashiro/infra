resource "cloudflare_record" "cname_cdn" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "CNAME"
  name    = "cdn"
  content = var.r2_bucket_domain_cdn_koyashiro_net
  proxied = true
}
