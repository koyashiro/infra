resource "cloudflare_dns_record" "cname_cdn" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "CNAME"
  name    = "cdn"
  content = "public.r2.dev" # R2 bucket is not supported
  proxied = true

  lifecycle {
    ignore_changes = [content]
  }
}
