terraform {
  backend "s3" {
    bucket = "saidcluster.com"
    key = "state/said_cluster"
    region = "us-east-2" 
 }
}
