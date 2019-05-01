resource "aws_ebs_volume" "a-etcd-events-saidcluster-com" {
  availability_zone = "us-east-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "a.etcd-events.saidcluster.com"
    "k8s.io/etcd/events"                    = "a/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-saidcluster-com" {
  availability_zone = "us-east-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "a.etcd-main.saidcluster.com"
    "k8s.io/etcd/main"                      = "a/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-saidcluster-com" {
  availability_zone = "us-east-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "b.etcd-events.saidcluster.com"
    "k8s.io/etcd/events"                    = "b/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-saidcluster-com" {
  availability_zone = "us-east-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "b.etcd-main.saidcluster.com"
    "k8s.io/etcd/main"                      = "b/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-saidcluster-com" {
  availability_zone = "us-east-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "c.etcd-events.saidcluster.com"
    "k8s.io/etcd/events"                    = "c/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-saidcluster-com" {
  availability_zone = "us-east-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "c.etcd-main.saidcluster.com"
    "k8s.io/etcd/main"                      = "c/a,b,c"
    "k8s.io/role/master"                    = "1"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}