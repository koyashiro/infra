resource "cloudflare_record" "cname_root" {
  zone_id = var.cloudflare_zone_id_koyashiro_jp
  type    = "CNAME"
  name    = "@"
  content = "koyashi.ro"
  proxied = true
}

resource "cloudflare_record" "txt_spf" {
  zone_id = var.cloudflare_zone_id_koyashiro_jp
  type    = "TXT"
  name    = "@"
  content = "v=spf1 -all"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.cloudflare_zone_id_koyashiro_jp
  type    = "TXT"
  name    = "*._domainkey"
  content = "v=DKIM1; p="
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.cloudflare_zone_id_koyashiro_jp
  type    = "TXT"
  name    = "_dmarc"
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.cloudflare_zone_id_koyashiro_jp
  type    = "TXT"
  name    = "@"
  content = "keybase-site-verification=0NfRd3yTw2Ssdw6_sWzjtACKv0NK78p4-c7FcBBQj9k"
  ttl     = 1 # auto
}
