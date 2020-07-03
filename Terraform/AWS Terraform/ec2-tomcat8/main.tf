provider "aws" {
  region     = "${var.region}"
  access_key = "${var.acceskey}"
  secret_key = "${var.secretkey}"
  ## rather the passing access key and secret key use aws cli (configure aws cli)
}


