resource "cloudflare_record" "cname_root" {
  zone_id = var.cloudflare_zone_id_koyashiro_dev
  type    = "CNAME"
  name    = "@"
  value   = "koyashi.ro"
  proxied = true
  ttl     = 1
}

resource "cloudflare_record" "txt_spf" {
  zone_id = var.cloudflare_zone_id_koyashiro_dev
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 -all"
  ttl     = 1
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.cloudflare_zone_id_koyashiro_dev
  type    = "TXT"
  name    = "*._domainkey"
  value   = "v=DKIM1; p="
  ttl     = 1
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.cloudflare_zone_id_koyashiro_dev
  type    = "TXT"
  name    = "_dmarc"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  ttl     = 1
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.cloudflare_zone_id_koyashiro_dev
  type    = "TXT"
  name    = "@"
  value   = "keybase-site-verification=cgtWui1rP9uCabMptNv5HvLRW6yWnQpHTvfTjhlSPFA"
  ttl     = 1
}
