resource "cloudflare_record" "cname_root" {
  zone_id = var.cloudflare_zone_id_koyashiro_sh
  type    = "CNAME"
  name    = "@"
  value   = "koyashiro-sh.pages.dev"
  proxied = true
}

resource "cloudflare_record" "cname_dotfiles" {
  zone_id = var.cloudflare_zone_id_koyashiro_sh
  type    = "CNAME"
  name    = "dotfiles"
  value   = "koyashiro-sh.pages.dev"
  proxied = true
}

resource "cloudflare_record" "txt_spf" {
  zone_id = var.cloudflare_zone_id_koyashiro_sh
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 -all"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.cloudflare_zone_id_koyashiro_sh
  type    = "TXT"
  name    = "*._domainkey"
  value   = "v=DKIM1; p="
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.cloudflare_zone_id_koyashiro_sh
  type    = "TXT"
  name    = "_dmarc"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.cloudflare_zone_id_koyashiro_sh
  type    = "TXT"
  name    = "@"
  value   = "keybase-site-verification=NNZVaBOMg3ALJyId1SRe4LGb6lxxYQr8Nau-yf1ut4w"
  ttl     = 1 # auto
}
