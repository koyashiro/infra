data "cloudflare_zone" "koyashi_ro" {
  name = "koyashi.ro"
}

resource "cloudflare_record" "cname_root" {
  zone_id = data.cloudflare_zone.koyashi_ro.id
  type    = "CNAME"
  name    = "@"
  value   = "koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "cname_blog" {
  zone_id = data.cloudflare_zone.koyashi_ro.id
  type    = "CNAME"
  name    = "blog"
  value   = "blog-koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "cname_cdn" {
  zone_id = data.cloudflare_zone.koyashi_ro.id
  type    = "CNAME"
  name    = "cdn"
  value   = "cdn-koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "mx_primary" {
  zone_id  = data.cloudflare_zone.koyashi_ro.id
  type     = "MX"
  name     = "@"
  value    = "aspmx.l.google.com"
  priority = 1
}

resource "cloudflare_record" "mx_alt1" {
  zone_id  = data.cloudflare_zone.koyashi_ro.id
  type     = "MX"
  name     = "@"
  value    = "alt1.aspmx.l.google.com"
  priority = 5
}

resource "cloudflare_record" "mx_alt2" {
  zone_id  = data.cloudflare_zone.koyashi_ro.id
  type     = "MX"
  name     = "@"
  value    = "alt2.aspmx.l.google.com"
  priority = 5
}

resource "cloudflare_record" "mx_alt3" {
  zone_id  = data.cloudflare_zone.koyashi_ro.id
  type     = "MX"
  name     = "@"
  value    = "alt3.aspmx.l.google.com"
  priority = 10
}

resource "cloudflare_record" "mx_alt4" {
  zone_id  = data.cloudflare_zone.koyashi_ro.id
  type     = "MX"
  name     = "@"
  value    = "alt4.aspmx.l.google.com"
  priority = 10
}

resource "cloudflare_record" "txt_spf" {
  zone_id = data.cloudflare_zone.koyashi_ro.id
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 include:koyashi.ro ~all"
}

resource "cloudflare_record" "txt_google_suite_verification" {
  zone_id = data.cloudflare_zone.koyashi_ro.id
  type    = "TXT"
  name    = "@"
  value   = "google-site-verification=IXe9IiyOUytKAH9R0_KVE2Vmpt1iOB8kqwtSf-F4304"
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = data.cloudflare_zone.koyashi_ro.id
  type    = "TXT"
  name    = "@"
  value   = "keybase-site-verification=h6nNjeIuG_eU4fByG3qFMwbC8-sUeC5pvpD_m5iIUh4"
}

resource "cloudflare_record" "txt_google_domainkey" {
  zone_id = data.cloudflare_zone.koyashi_ro.id
  type    = "TXT"
  name    = "google._domainkey"
  value   = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsN9es+6C1V6MGC8Scg/nHQOEd9rtNraw6hqX6gi24F3i8hAVtlDC2FrSukqUz8HH1WEdaGxPir2yvE8xD7OxIT4uOUinb7eXY5CaCRJL9lpjj82FBcVOkiXcuTEFHu04kkHSo3fuLCl8OHrTup8HUqPJ2VwUiCeOkqjoy7Hv9VZDQmwjPbRyVncjVb/sDtVeY2bVUix1acSo/g5mIrbcw2xWrxCU/VWcEfOvQypfE+z9UfBpbeAGWArBD+l3+vLAWFb3dsMc4CvRa3mGY8kehOMTHnaaf2gO5k7afAkSil/zK580WLHG0Hq6rEG9tsawydVbrkCqRRsV9yAWhyI02QIDAQAB"
}

resource "cloudflare_record" "txt_discord" {
  zone_id = data.cloudflare_zone.koyashi_ro.id
  type    = "TXT"
  name    = "_discord"
  value   = "dh=f083205940112e59edc7561488d3867f414384a3"
}
