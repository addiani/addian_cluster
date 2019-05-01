resource "aws_internet_gateway" "saidcluster-com" {
  vpc_id = "${aws_vpc.saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}