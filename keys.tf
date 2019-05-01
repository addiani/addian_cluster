resource "aws_key_pair" "kubernetes-saidcluster-com-8beb1a5482a28753241b668921e0fdc5" {
  key_name   = "kubernetes.saidcluster.com-8b:eb:1a:54:82:a2:87:53:24:1b:66:89:21:e0:fd:c5"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.saidcluster.com-8beb1a5482a28753241b668921e0fdc5_public_key")}"
}