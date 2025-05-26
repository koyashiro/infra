resource "cloudflare_record" "txt_spf" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "TXT"
  name    = "@"
  content = "v=spf1 -all"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "TXT"
  name    = "*._domainkey"
  content = "v=DKIM1; p="
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "TXT"
  name    = "_dmarc"
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "TXT"
  name    = "@"
  content = "keybase-site-verification=yhN360YHknl0Hox6RN5ZbeJ6vXvPhv8vvPdigvPWLmg"
  ttl     = 1 # auto
}
