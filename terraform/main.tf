terraform {
  required_version = "1.7.5"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "= 4.26.0"
    }
  }

  cloud {
  }
}

provider "cloudflare" {}
