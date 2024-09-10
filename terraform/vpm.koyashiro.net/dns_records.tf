resource "cloudflare_record" "cname_vpm" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "CNAME"
  name    = "vpm"
  content = "vpm-repos.pages.dev"
  proxied = true
}
