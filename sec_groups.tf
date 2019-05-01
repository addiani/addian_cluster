resource "aws_security_group" "api-elb-saidcluster-com" {
  name        = "api-elb.saidcluster.com"
  vpc_id      = "${aws_vpc.saidcluster-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "api-elb.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-saidcluster-com" {
  name        = "bastion-elb.saidcluster.com"
  vpc_id      = "${aws_vpc.saidcluster-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "bastion-elb.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_security_group" "bastion-saidcluster-com" {
  name        = "bastion.saidcluster.com"
  vpc_id      = "${aws_vpc.saidcluster-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "bastion.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_security_group" "masters-saidcluster-com" {
  name        = "masters.saidcluster.com"
  vpc_id      = "${aws_vpc.saidcluster-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "masters.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_security_group" "nodes-saidcluster-com" {
  name        = "nodes.saidcluster.com"
  vpc_id      = "${aws_vpc.saidcluster-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "nodes.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.masters-saidcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.masters-saidcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-saidcluster-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-saidcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-saidcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-saidcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-saidcluster-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-saidcluster-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-saidcluster-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-saidcluster-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-saidcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-saidcluster-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-saidcluster-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-saidcluster-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-saidcluster-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.nodes-saidcluster-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-saidcluster-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-saidcluster-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-saidcluster-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}