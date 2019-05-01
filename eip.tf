
resource "aws_eip" "us-east-2a-saidcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2a.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_eip" "us-east-2b-saidcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2b.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_eip" "us-east-2c-saidcluster-com" {
  vpc = true

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "us-east-2c.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}