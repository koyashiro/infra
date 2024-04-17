data "cloudflare_zone" "koyashiro_net" {
  name = "koyashiro.net"
}

resource "cloudflare_record" "cname_root" {
  zone_id = data.cloudflare_zone.koyashiro_net.id
  type    = "CNAME"
  name    = "@"
  value   = "koyashi.ro"
  proxied = true
}

resource "cloudflare_record" "cname_vpm" {
  zone_id = data.cloudflare_zone.koyashiro_net.id
  type    = "CNAME"
  name    = "vpm"
  value   = "vpm-repos.pages.dev"
  proxied = true
}

resource "cloudflare_record" "mx_primary" {
  zone_id  = data.cloudflare_zone.koyashiro_net.id
  type     = "MX"
  name     = "@"
  value    = "aspmx.l.google.com"
  priority = 1
}

resource "cloudflare_record" "mx_alt1" {
  zone_id  = data.cloudflare_zone.koyashiro_net.id
  type     = "MX"
  name     = "@"
  value    = "alt1.aspmx.l.google.com"
  priority = 5
}

resource "cloudflare_record" "mx_alt2" {
  zone_id  = data.cloudflare_zone.koyashiro_net.id
  type     = "MX"
  name     = "@"
  value    = "alt2.aspmx.l.google.com"
  priority = 5
}

resource "cloudflare_record" "mx_alt3" {
  zone_id  = data.cloudflare_zone.koyashiro_net.id
  type     = "MX"
  name     = "@"
  value    = "alt3.aspmx.l.google.com"
  priority = 10
}

resource "cloudflare_record" "mx_alt4" {
  zone_id  = data.cloudflare_zone.koyashiro_net.id
  type     = "MX"
  name     = "@"
  value    = "alt4.aspmx.l.google.com"
  priority = 10
}

resource "cloudflare_record" "txt_spf" {
  zone_id = data.cloudflare_zone.koyashiro_net.id
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 include:koyashiro.net ~all"
}

resource "cloudflare_record" "txt_google_suite_verification" {
  zone_id = data.cloudflare_zone.koyashiro_net.id
  type    = "TXT"
  name    = "@"
  value   = "google-site-verification=7-AYDWnsMkam_BpKeKWqjbeTqglhrp80t1N4RtKg6gQ"
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = data.cloudflare_zone.koyashiro_net.id
  type    = "TXT"
  name    = "@"
  value   = "keybase-site-verification=fFkMCr9xX06WBiCVODi28op8DCxmwfcYIN-iFSqEiwk"
}

resource "cloudflare_record" "txt_google_domainkey" {
  zone_id = data.cloudflare_zone.koyashiro_net.id
  type    = "TXT"
  name    = "google._domainkey"
  value   = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyhioqL5nv/wDnkrmguw+J1qpm2fsLev+PKZMVVCLuGurD/6UJUscAFRN5xpjbP4DOsTmQtP/pTj8M0+9DkRItkuJUGCb9U9DMi3MN2Ll9BAaEfKFUDg9OEudIW/kWBhawkQpKA1DREu/bnZPr8VvwcyrO+DhPRUHYsylEPWrCY8EdDSv4U/m4a2kc79l1aJLo3iC542LStRNw70ls8hKHWC8+49vup2FFWFn9ktSgQs21A5hDY+VB/vEnpqCyN8R+VP0q5QgmAxvwWtfGQ11kIE82+p6OOI2RNPHYt5wHlPtmyZCZh28l3PRrdzXXOJiV9KvC9FuAvJmHUuu9OoF5wIDAQAB"
}

resource "cloudflare_record" "txt_discord" {
  zone_id = data.cloudflare_zone.koyashiro_net.id
  type    = "TXT"
  name    = "_discord"
  value   = "dh=2f7777c55cca3b5519378571f05bd3979da45d38"
}

resource "cloudflare_record" "txt_test" {
  zone_id = data.cloudflare_zone.koyashiro_net.id
  type    = "TXT"
  name    = "test"
  value   = "test"
}
