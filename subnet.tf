resource "aws_subnet" "us-east-2a-saidcluster-com" {
  vpc_id            = "${aws_vpc.saidcluster-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-east-2a"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2a.saidcluster.com"
    SubnetType                              = "Private"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"       = "1"
  }
}

resource "aws_subnet" "us-east-2b-saidcluster-com" {
  vpc_id            = "${aws_vpc.saidcluster-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-east-2b"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2b.saidcluster.com"
    SubnetType                              = "Private"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"       = "1"
  }
}

resource "aws_subnet" "us-east-2c-saidcluster-com" {
  vpc_id            = "${aws_vpc.saidcluster-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-east-2c"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2c.saidcluster.com"
    SubnetType                              = "Private"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/role/internal-elb"       = "1"
  }
}

resource "aws_subnet" "utility-us-east-2a-saidcluster-com" {
  vpc_id            = "${aws_vpc.saidcluster-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-east-2a"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "utility-us-east-2a.saidcluster.com"
    SubnetType                              = "Utility"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/role/elb"                = "1"
  }
}

resource "aws_subnet" "utility-us-east-2b-saidcluster-com" {
  vpc_id            = "${aws_vpc.saidcluster-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-east-2b"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "utility-us-east-2b.saidcluster.com"
    SubnetType                              = "Utility"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/role/elb"                = "1"
  }
}

resource "aws_subnet" "utility-us-east-2c-saidcluster-com" {
  vpc_id            = "${aws_vpc.saidcluster-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-east-2c"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "utility-us-east-2c.saidcluster.com"
    SubnetType                              = "Utility"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/role/elb"                = "1"
  }
}