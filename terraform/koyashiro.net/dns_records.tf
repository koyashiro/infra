resource "cloudflare_record" "cname_root" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "CNAME"
  name    = "@"
  content = resource.cloudflare_pages_project.koyashiro_net.subdomain
  proxied = true
}

resource "cloudflare_record" "cname_vpm" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "CNAME"
  name    = "vpm"
  content = "vpm-repos.pages.dev"
  proxied = true
}

resource "cloudflare_record" "cname_cdn" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "CNAME"
  name    = "cdn"
  content = "cdn-koyashiro.pages.dev"
  proxied = true
}

resource "cloudflare_record" "mx_primary" {
  zone_id  = var.cloudflare_zone_id_koyashiro_net
  type     = "MX"
  name     = "@"
  content  = "aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 1
}

resource "cloudflare_record" "mx_alt1" {
  zone_id  = var.cloudflare_zone_id_koyashiro_net
  type     = "MX"
  name     = "@"
  content  = "alt1.aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 5
}

resource "cloudflare_record" "mx_alt2" {
  zone_id  = var.cloudflare_zone_id_koyashiro_net
  type     = "MX"
  name     = "@"
  content  = "alt2.aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 5
}

resource "cloudflare_record" "mx_alt3" {
  zone_id  = var.cloudflare_zone_id_koyashiro_net
  type     = "MX"
  name     = "@"
  content  = "alt3.aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 10
}

resource "cloudflare_record" "mx_alt4" {
  zone_id  = var.cloudflare_zone_id_koyashiro_net
  type     = "MX"
  name     = "@"
  content  = "alt4.aspmx.l.google.com"
  ttl      = 1 # auto
  priority = 10
}

resource "cloudflare_record" "txt_spf" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "TXT"
  name    = "@"
  content = "v=spf1 include:koyashiro.net ~all"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dkim" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "TXT"
  name    = "*._domainkey"
  content = "v=DKIM1; p="
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_google_dkim" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "TXT"
  name    = "google._domainkey"
  content = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyhioqL5nv/wDnkrmguw+J1qpm2fsLev+PKZMVVCLuGurD/6UJUscAFRN5xpjbP4DOsTmQtP/pTj8M0+9DkRItkuJUGCb9U9DMi3MN2Ll9BAaEfKFUDg9OEudIW/kWBhawkQpKA1DREu/bnZPr8VvwcyrO+DhPRUHYsylEPWrCY8EdDSv4U/m4a2kc79l1aJLo3iC542LStRNw70ls8hKHWC8+49vup2FFWFn9ktSgQs21A5hDY+VB/vEnpqCyN8R+VP0q5QgmAxvwWtfGQ11kIE82+p6OOI2RNPHYt5wHlPtmyZCZh28l3PRrdzXXOJiV9KvC9FuAvJmHUuu9OoF5wIDAQAB"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_dmarc" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "TXT"
  name    = "_dmarc"
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s;"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_google_suite_verification" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "TXT"
  name    = "@"
  content = "google-site-verification=7-AYDWnsMkam_BpKeKWqjbeTqglhrp80t1N4RtKg6gQ"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_keybase_site_verification" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "TXT"
  name    = "@"
  content = "keybase-site-verification=fFkMCr9xX06WBiCVODi28op8DCxmwfcYIN-iFSqEiwk"
  ttl     = 1 # auto
}

resource "cloudflare_record" "txt_discord" {
  zone_id = var.cloudflare_zone_id_koyashiro_net
  type    = "TXT"
  name    = "_discord"
  content = "dh=2f7777c55cca3b5519378571f05bd3979da45d38"
  ttl     = 1 # auto
}
