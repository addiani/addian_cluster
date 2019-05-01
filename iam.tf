resource "aws_iam_instance_profile" "bastions-saidcluster-com" {
  name = "bastions.saidcluster.com"
  role = "${aws_iam_role.bastions-saidcluster-com.name}"
}

resource "aws_iam_instance_profile" "masters-saidcluster-com" {
  name = "masters.saidcluster.com"
  role = "${aws_iam_role.masters-saidcluster-com.name}"
}

resource "aws_iam_instance_profile" "nodes-saidcluster-com" {
  name = "nodes.saidcluster.com"
  role = "${aws_iam_role.nodes-saidcluster-com.name}"
}

resource "aws_iam_role" "bastions-saidcluster-com" {
  name               = "bastions.saidcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.saidcluster.com_policy")}"
}

resource "aws_iam_role" "masters-saidcluster-com" {
  name               = "masters.saidcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.saidcluster.com_policy")}"
}

resource "aws_iam_role" "nodes-saidcluster-com" {
  name               = "nodes.saidcluster.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.saidcluster.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-saidcluster-com" {
  name   = "bastions.saidcluster.com"
  role   = "${aws_iam_role.bastions-saidcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.saidcluster.com_policy")}"
}

resource "aws_iam_role_policy" "masters-saidcluster-com" {
  name   = "masters.saidcluster.com"
  role   = "${aws_iam_role.masters-saidcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.saidcluster.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-saidcluster-com" {
  name   = "nodes.saidcluster.com"
  role   = "${aws_iam_role.nodes-saidcluster-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.saidcluster.com_policy")}"
}