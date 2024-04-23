resource "cloudflare_record" "a_root" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "A"
  name    = "@"
  value   = resource.vultr_instance.instance.main_ip
  proxied = true
}

resource "cloudflare_record" "aaaa_root" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "AAAA"
  name    = "@"
  value   = resource.vultr_instance.instance.v6_main_ip
  proxied = true
}

resource "cloudflare_record" "txt_spf" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 -all"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "TXT"
  name    = "*._domainkey"
  value   = "v=DKIM1; p="
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "TXT"
  name    = "_dmarc"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.cloudflare_zone_id_koyashiro_live
  type    = "TXT"
  name    = "@"
  value   = "keybase-site-verification=yhN360YHknl0Hox6RN5ZbeJ6vXvPhv8vvPdigvPWLmg"
  ttl     = 1 # auto
}
