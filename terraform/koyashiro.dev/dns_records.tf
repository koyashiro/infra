resource "cloudflare_record" "cname_root" {
  zone_id = var.koyashiro_dev_cloudflare_zone_id
  type    = "CNAME"
  name    = "@"
  value   = "koyashi.ro"
  proxied = true
}

resource "cloudflare_record" "txt_spf" {
  zone_id = var.koyashiro_dev_cloudflare_zone_id
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 -all"
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.koyashiro_dev_cloudflare_zone_id
  type    = "TXT"
  name    = "*._domainkey"
  value   = "v=DKIM1; p="
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.koyashiro_dev_cloudflare_zone_id
  type    = "TXT"
  name    = "_dmarc"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.koyashiro_dev_cloudflare_zone_id
  type    = "TXT"
  name    = "@"
  value   = "keybase-site-verification=cgtWui1rP9uCabMptNv5HvLRW6yWnQpHTvfTjhlSPFA"
}
