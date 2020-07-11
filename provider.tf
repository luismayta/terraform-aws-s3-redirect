provider "aws" {
  alias   = "main"
  version = "~> 2.9"
}

provider "aws" {
  alias   = "cloudfront"
  version = "~> 2.9"
}

provider "local" {
  version = ">=1.3.0"
}