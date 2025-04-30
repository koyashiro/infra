resource "cloudflare_pages_project" "vpm_koyashiro_net" {
  account_id        = var.cloudflare_account_id
  name              = "vpm-repos"
  production_branch = "main"

  build_config = {
    build_caching   = true
    build_command   = "npm run build"
    destination_dir = "dist"
    root_dir        = ""

    # Web Analytics is not supported
    web_analytics_tag   = ""
    web_analytics_token = ""
  }

  lifecycle {
    ignore_changes = [
      build_config["web_analytics_tag"],
      build_config["web_analytics_token"],
    ]
  }
}

resource "cloudflare_pages_domain" "vpm_koyashiro_net" {
  account_id   = var.cloudflare_account_id
  project_name = resource.cloudflare_pages_project.vpm_koyashiro_net.name
  name         = resource.cloudflare_dns_record.cname_vpm.hostname
}
