terraform {
  required_providers {
    codefresh = {
      source = "codefresh.io/app/codefresh"
      version = "0.1.0"
    }
  }
}

provider "codefresh" {
  api_url = "https://g.codefresh.io/api" # Default value - https://g.codefresh.io/api
}

terraform {
  backend "s3" {
    bucket = "terraformstufff"
    key    = "codefresh2/codefresh-inception-state-us-east-2"
    region = "ap-southeast-2"
  }
}
