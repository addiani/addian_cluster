resource "aws_nat_gateway" "us-east-2a-saidcluster-com" {
  allocation_id = "${aws_eip.us-east-2a-saidcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2a-saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2a.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-2b-saidcluster-com" {
  allocation_id = "${aws_eip.us-east-2b-saidcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2b-saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2b.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-2c-saidcluster-com" {
  allocation_id = "${aws_eip.us-east-2c-saidcluster-com.id}"
  subnet_id     = "${aws_subnet.utility-us-east-2c-saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2c.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}