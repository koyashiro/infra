terraform {
  required_version = "1.9.2"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.37.0"
    }
  }

  cloud {
    # organization = TF_CLOUD_ORGANIZATION

    workspaces {
      # name = TF_WORKSPACE
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
