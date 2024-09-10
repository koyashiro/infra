resource "cloudflare_record" "cname_root" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "CNAME"
  name    = "@"
  content = "koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "cname_blog" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "CNAME"
  name    = "blog"
  content = "blog-koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "mx_primary" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  content  = "aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 1
}

resource "cloudflare_record" "mx_alt1" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  content  = "alt1.aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 5
}

resource "cloudflare_record" "mx_alt2" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  content  = "alt2.aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 5
}

resource "cloudflare_record" "mx_alt3" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  content  = "alt3.aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 10
}

resource "cloudflare_record" "mx_alt4" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  content  = "alt4.aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 10
}

resource "cloudflare_record" "txt_spf" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "@"
  content = "v=spf1 include:koyashi.ro ~all"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "*._domainkey"
  content = "v=DKIM1; p="
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_google_dkim" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "google._domainkey"
  content = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsN9es+6C1V6MGC8Scg/nHQOEd9rtNraw6hqX6gi24F3i8hAVtlDC2FrSukqUz8HH1WEdaGxPir2yvE8xD7OxIT4uOUinb7eXY5CaCRJL9lpjj82FBcVOkiXcuTEFHu04kkHSo3fuLCl8OHrTup8HUqPJ2VwUiCeOkqjoy7Hv9VZDQmwjPbRyVncjVb/sDtVeY2bVUix1acSo/g5mIrbcw2xWrxCU/VWcEfOvQypfE+z9UfBpbeAGWArBD+l3+vLAWFb3dsMc4CvRa3mGY8kehOMTHnaaf2gO5k7afAkSil/zK580WLHG0Hq6rEG9tsawydVbrkCqRRsV9yAWhyI02QIDAQAB"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "_dmarc"
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_google_suite_verification" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "@"
  content = "google-site-verification=IXe9IiyOUytKAH9R0_KVE2Vmpt1iOB8kqwtSf-F4304"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "@"
  content = "keybase-site-verification=h6nNjeIuG_eU4fByG3qFMwbC8-sUeC5pvpD_m5iIUh4"
  ttl     = 1 # auto
}


resource "cloudflare_record" "txt_discord" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "_discord"
  content = "dh=f083205940112e59edc7561488d3867f414384a3"
  ttl     = 1 # auto
}
