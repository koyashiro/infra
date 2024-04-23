terraform {
  required_version = "1.8.1"

  required_providers {
    http = {
      source  = "hashicorp/http"
      version = "3.4.2"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.30.0"
    }

    vultr = {
      source  = "vultr/vultr"
      version = "2.19.0"
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
