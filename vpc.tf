resource "aws_vpc" "saidcluster-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "saidcluster-com" {
  domain_name         = "us-east-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "saidcluster-com" {
  vpc_id          = "${aws_vpc.saidcluster-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.saidcluster-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
