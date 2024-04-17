terraform {
  required_version = "1.8.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.30.0"
    }
  }

  cloud {
  }
}

provider "cloudflare" {}
