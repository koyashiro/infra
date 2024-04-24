resource "cloudflare_pages_project" "koyashiro_net" {
  account_id        = var.cloudflare_account_id
  name              = "koyashiro-net"
  production_branch = "main"

  source {
    type = "github"
    config {
      owner             = "koyashiro"
      repo_name         = "koyashiro.net"
      production_branch = "main"
    }
  }

  build_config {
    build_command       = "npm run build"
    destination_dir     = "out"
    root_dir            = ""
    web_analytics_tag   = resource.cloudflare_web_analytics_site.koyashiro_net.site_tag
    web_analytics_token = resource.cloudflare_web_analytics_site.koyashiro_net.site_token
  }

  deployment_configs {
    preview {
      environment_variables = {
        NODE_VERSION = "20.12.2"
      }
    }
    production {
      environment_variables = {
        NODE_VERSION = "20.12.2"
      }
    }
  }
}

resource "cloudflare_pages_domain" "koyashiro_net" {
  account_id   = var.cloudflare_account_id
  project_name = resource.cloudflare_pages_project.koyashiro_net.name
  domain       = resource.cloudflare_record.cname_root.hostname
}
