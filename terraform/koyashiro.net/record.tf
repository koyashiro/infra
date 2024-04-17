resource "cloudflare_record" "cname_root" {
  zone_id = var.cloudflare_zone_id
  type    = "CNAME"
  name    = "@"
  value   = "koyashi.ro"
  proxied = true
}
