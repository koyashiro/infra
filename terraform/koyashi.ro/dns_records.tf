resource "cloudflare_record" "cname_root" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "CNAME"
  name    = "@"
  value   = "koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "cname_blog" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "CNAME"
  name    = "blog"
  value   = "blog-koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "cname_cdn" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "CNAME"
  name    = "cdn"
  value   = "cdn-koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "mx_primary" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  value    = "aspmx.l.google.com"
  ttl      = 1
  priority = 1
}

resource "cloudflare_record" "mx_alt1" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  value    = "alt1.aspmx.l.google.com"
  ttl      = 1
  priority = 5
}

resource "cloudflare_record" "mx_alt2" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  value    = "alt2.aspmx.l.google.com"
  ttl      = 1
  priority = 5
}

resource "cloudflare_record" "mx_alt3" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  value    = "alt3.aspmx.l.google.com"
  ttl      = 1
  priority = 10
}

resource "cloudflare_record" "mx_alt4" {
  zone_id  = var.cloudflare_zone_id_koyashi_ro
  type     = "MX"
  name     = "@"
  value    = "alt4.aspmx.l.google.com"
  ttl      = 1
  priority = 10
}

resource "cloudflare_record" "txt_spf" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 include:koyashi.ro ~all"
  ttl     = 1
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "*._domainkey"
  value   = "v=DKIM1; p="
  ttl     = 1
}

resource "cloudflare_record" "txt_google_dkim" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "google._domainkey"
  value   = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsN9es+6C1V6MGC8Scg/nHQOEd9rtNraw6hqX6gi24F3i8hAVtlDC2FrSukqUz8HH1WEdaGxPir2yvE8xD7OxIT4uOUinb7eXY5CaCRJL9lpjj82FBcVOkiXcuTEFHu04kkHSo3fuLCl8OHrTup8HUqPJ2VwUiCeOkqjoy7Hv9VZDQmwjPbRyVncjVb/sDtVeY2bVUix1acSo/g5mIrbcw2xWrxCU/VWcEfOvQypfE+z9UfBpbeAGWArBD+l3+vLAWFb3dsMc4CvRa3mGY8kehOMTHnaaf2gO5k7afAkSil/zK580WLHG0Hq6rEG9tsawydVbrkCqRRsV9yAWhyI02QIDAQAB"
  ttl     = 1
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "_dmarc"
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  ttl     = 1
}

resource "cloudflare_record" "txt_google_suite_verification" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "@"
  value   = "google-site-verification=IXe9IiyOUytKAH9R0_KVE2Vmpt1iOB8kqwtSf-F4304"
  ttl     = 1
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "@"
  value   = "keybase-site-verification=h6nNjeIuG_eU4fByG3qFMwbC8-sUeC5pvpD_m5iIUh4"
  ttl     = 1
}


resource "cloudflare_record" "txt_discord" {
  zone_id = var.cloudflare_zone_id_koyashi_ro
  type    = "TXT"
  name    = "_discord"
  value   = "dh=f083205940112e59edc7561488d3867f414384a3"
  ttl     = 1
}
