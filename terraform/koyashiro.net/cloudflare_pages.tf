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
    build_command   = "npm run build"
    destination_dir = "out"
    root_dir        = ""
  }

  deployment_configs {
    preview {
      environment_variables = {
        NODE_VERSION = "22.8.0"
      }
    }
    production {
      environment_variables = {
        NODE_VERSION = "22.8.0"
      }
    }
  }
}

resource "cloudflare_pages_domain" "koyashiro_net" {
  account_id   = var.cloudflare_account_id
  project_name = resource.cloudflare_pages_project.koyashiro_net.name
  domain       = resource.cloudflare_record.cname_root.hostname
}
