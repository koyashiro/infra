terraform {
  required_version = "1.10.4"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.50.0"
    }

    vultr = {
      source  = "vultr/vultr"
      version = "2.23.1"
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

provider "vultr" {
  api_key = var.vultr_api_key
}
