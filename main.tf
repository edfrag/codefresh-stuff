terraform {
  required_providers {
    codefresh = {
      version = "0.1.0"
      source = "codefresh.io/app/codefresh"
##	source = "codefresh.io/app/codefresh/0.1.0/linux_amd64"
##	source = "codefresh.io/app/codefresh/0.1.0/darwin_amd64"
    }
  }
}

provider "codefresh" {
  api_url = "https://g.codefresh.io/api" # Default value - https://g.codefresh.io/api
}

terraform {
  backend "s3" {
    bucket = "terraformstufff"
    key    = "codefresh/codefresh-inception-state-us-east-2"
    region = "ap-southeast-2"
  }
}
