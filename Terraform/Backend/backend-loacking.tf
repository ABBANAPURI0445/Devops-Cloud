terraform {
  backend "s3" {
    bucket = "terraform-s3-backend-state-file"
    key    = "terraform-state"
    # region = "us-west-2"
    #access_key  = "AKIAXIOQ7O2F5LGG4A5M"
   # secret_key = "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"
   dynamodb_table = "terraform-lock"
  }
}
##terraform init -reconfigure -backend-config 'access_key=AKIAXIOQ7O2F5LGG4A5M' -backend-config 'secret_key=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' -backend-config 'region=us-west-2'