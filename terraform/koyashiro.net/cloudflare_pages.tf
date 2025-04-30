resource "cloudflare_pages_project" "koyashiro_net" {
  account_id        = var.cloudflare_account_id
  name              = "koyashiro-net"
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

  deployment_configs = {
    preview = {
      env_vars = {
        NODE_VERSION = {
          type  = "plain_text"
          value = "22.10.0"
        }
      }
    }
    production = {
      env_vars = {
        NODE_VERSION = {
          type  = "plain_text"
          value = "22.10.0"
        }
      }
    }
  }

  lifecycle {
    ignore_changes = [
      build_config["web_analytics_tag"],
      build_config["web_analytics_token"],
    ]
  }
}

resource "cloudflare_pages_domain" "koyashiro_net" {
  account_id   = var.cloudflare_account_id
  project_name = resource.cloudflare_pages_project.koyashiro_net.name
  name         = resource.cloudflare_dns_record.cname_root.hostname
}
