locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-saidcluster-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-saidcluster-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-saidcluster-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-saidcluster-com.name}"
  cluster_name                      = "saidcluster.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-east-2a-masters-saidcluster-com.id}", "${aws_autoscaling_group.master-us-east-2b-masters-saidcluster-com.id}", "${aws_autoscaling_group.master-us-east-2c-masters-saidcluster-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-saidcluster-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-saidcluster-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-saidcluster-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-saidcluster-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-saidcluster-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-east-2a-saidcluster-com.id}", "${aws_subnet.us-east-2b-saidcluster-com.id}", "${aws_subnet.us-east-2c-saidcluster-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-saidcluster-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-saidcluster-com.name}"
  region                            = "us-east-2"
  route_table_private-us-east-2a_id = "${aws_route_table.private-us-east-2a-saidcluster-com.id}"
  route_table_private-us-east-2b_id = "${aws_route_table.private-us-east-2b-saidcluster-com.id}"
  route_table_private-us-east-2c_id = "${aws_route_table.private-us-east-2c-saidcluster-com.id}"
  route_table_public_id             = "${aws_route_table.saidcluster-com.id}"
  subnet_us-east-2a_id              = "${aws_subnet.us-east-2a-saidcluster-com.id}"
  subnet_us-east-2b_id              = "${aws_subnet.us-east-2b-saidcluster-com.id}"
  subnet_us-east-2c_id              = "${aws_subnet.us-east-2c-saidcluster-com.id}"
  subnet_utility-us-east-2a_id      = "${aws_subnet.utility-us-east-2a-saidcluster-com.id}"
  subnet_utility-us-east-2b_id      = "${aws_subnet.utility-us-east-2b-saidcluster-com.id}"
  subnet_utility-us-east-2c_id      = "${aws_subnet.utility-us-east-2c-saidcluster-com.id}"
  vpc_cidr_block                    = "${aws_vpc.saidcluster-com.cidr_block}"
  vpc_id                            = "${aws_vpc.saidcluster-com.id}"
}

output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-saidcluster-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-saidcluster-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-saidcluster-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-saidcluster-com.name}"
}

output "cluster_name" {
  value = "saidcluster.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-east-2a-masters-saidcluster-com.id}", "${aws_autoscaling_group.master-us-east-2b-masters-saidcluster-com.id}", "${aws_autoscaling_group.master-us-east-2c-masters-saidcluster-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-saidcluster-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-saidcluster-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-saidcluster-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-saidcluster-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-saidcluster-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-east-2a-saidcluster-com.id}", "${aws_subnet.us-east-2b-saidcluster-com.id}", "${aws_subnet.us-east-2c-saidcluster-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-saidcluster-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-saidcluster-com.name}"
}

output "region" {
  value = "us-east-2"
}

output "route_table_private-us-east-2a_id" {
  value = "${aws_route_table.private-us-east-2a-saidcluster-com.id}"
}

output "route_table_private-us-east-2b_id" {
  value = "${aws_route_table.private-us-east-2b-saidcluster-com.id}"
}

output "route_table_private-us-east-2c_id" {
  value = "${aws_route_table.private-us-east-2c-saidcluster-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.saidcluster-com.id}"
}

output "subnet_us-east-2a_id" {
  value = "${aws_subnet.us-east-2a-saidcluster-com.id}"
}

output "subnet_us-east-2b_id" {
  value = "${aws_subnet.us-east-2b-saidcluster-com.id}"
}

output "subnet_us-east-2c_id" {
  value = "${aws_subnet.us-east-2c-saidcluster-com.id}"
}

output "subnet_utility-us-east-2a_id" {
  value = "${aws_subnet.utility-us-east-2a-saidcluster-com.id}"
}

output "subnet_utility-us-east-2b_id" {
  value = "${aws_subnet.utility-us-east-2b-saidcluster-com.id}"
}

output "subnet_utility-us-east-2c_id" {
  value = "${aws_subnet.utility-us-east-2c-saidcluster-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.saidcluster-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.saidcluster-com.id}"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_autoscaling_attachment" "bastions-saidcluster-com" {
  elb                    = "${aws_elb.bastion-saidcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-saidcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2a-masters-saidcluster-com" {
  elb                    = "${aws_elb.api-saidcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2a-masters-saidcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2b-masters-saidcluster-com" {
  elb                    = "${aws_elb.api-saidcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2b-masters-saidcluster-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-east-2c-masters-saidcluster-com" {
  elb                    = "${aws_elb.api-saidcluster-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-east-2c-masters-saidcluster-com.id}"
}

resource "aws_autoscaling_group" "bastions-saidcluster-com" {
  name                 = "bastions.saidcluster.com"
  launch_configuration = "${aws_launch_configuration.bastions-saidcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-us-east-2a-saidcluster-com.id}", "${aws_subnet.utility-us-east-2b-saidcluster-com.id}", "${aws_subnet.utility-us-east-2c-saidcluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-2a-masters-saidcluster-com" {
  name                 = "master-us-east-2a.masters.saidcluster.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2a-masters-saidcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2a-saidcluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2a.masters.saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-2b-masters-saidcluster-com" {
  name                 = "master-us-east-2b.masters.saidcluster.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2b-masters-saidcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2b-saidcluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2b.masters.saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-east-2c-masters-saidcluster-com" {
  name                 = "master-us-east-2c.masters.saidcluster.com"
  launch_configuration = "${aws_launch_configuration.master-us-east-2c-masters-saidcluster-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-east-2c-saidcluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-east-2c.masters.saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-east-2c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-saidcluster-com" {
  name                 = "nodes.saidcluster.com"
  launch_configuration = "${aws_launch_configuration.nodes-saidcluster-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.us-east-2a-saidcluster-com.id}", "${aws_subnet.us-east-2b-saidcluster-com.id}", "${aws_subnet.us-east-2c-saidcluster-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.saidcluster.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

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

resource "aws_elb" "api-saidcluster-com" {
  name = "api-saidcluster-com-evdirt"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-saidcluster-com.id}"]
  subnets         = ["${aws_subnet.utility-us-east-2a-saidcluster-com.id}", "${aws_subnet.utility-us-east-2b-saidcluster-com.id}", "${aws_subnet.utility-us-east-2c-saidcluster-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "saidcluster.com"
    Name              = "api.saidcluster.com"
  }
}

resource "aws_elb" "bastion-saidcluster-com" {
  name = "bastion-saidcluster-com-g3qtgv"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-saidcluster-com.id}"]
  subnets         = ["${aws_subnet.utility-us-east-2a-saidcluster-com.id}", "${aws_subnet.utility-us-east-2b-saidcluster-com.id}", "${aws_subnet.utility-us-east-2c-saidcluster-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster = "saidcluster.com"
    Name              = "bastion.saidcluster.com"
  }
}

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

resource "aws_internet_gateway" "saidcluster-com" {
  vpc_id = "${aws_vpc.saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-saidcluster-com-8beb1a5482a28753241b668921e0fdc5" {
  key_name   = "kubernetes.saidcluster.com-8b:eb:1a:54:82:a2:87:53:24:1b:66:89:21:e0:fd:c5"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.saidcluster.com-8beb1a5482a28753241b668921e0fdc5_public_key")}"
}

resource "aws_launch_configuration" "bastions-saidcluster-com" {
  name_prefix                 = "bastions.saidcluster.com-"
  image_id                    = "ami-033476a646ce264ac"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-saidcluster-com-8beb1a5482a28753241b668921e0fdc5.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-saidcluster-com.id}"
  security_groups             = ["${aws_security_group.bastion-saidcluster-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2a-masters-saidcluster-com" {
  name_prefix                 = "master-us-east-2a.masters.saidcluster.com-"
  image_id                    = "ami-033476a646ce264ac"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-saidcluster-com-8beb1a5482a28753241b668921e0fdc5.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-saidcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-saidcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2a.masters.saidcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2b-masters-saidcluster-com" {
  name_prefix                 = "master-us-east-2b.masters.saidcluster.com-"
  image_id                    = "ami-033476a646ce264ac"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-saidcluster-com-8beb1a5482a28753241b668921e0fdc5.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-saidcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-saidcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2b.masters.saidcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-east-2c-masters-saidcluster-com" {
  name_prefix                 = "master-us-east-2c.masters.saidcluster.com-"
  image_id                    = "ami-033476a646ce264ac"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-saidcluster-com-8beb1a5482a28753241b668921e0fdc5.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-saidcluster-com.id}"
  security_groups             = ["${aws_security_group.masters-saidcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-east-2c.masters.saidcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-saidcluster-com" {
  name_prefix                 = "nodes.saidcluster.com-"
  image_id                    = "ami-033476a646ce264ac"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-saidcluster-com-8beb1a5482a28753241b668921e0fdc5.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-saidcluster-com.id}"
  security_groups             = ["${aws_security_group.nodes-saidcluster-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.saidcluster.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

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

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.saidcluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.saidcluster-com.id}"
}

resource "aws_route" "private-us-east-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2a-saidcluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2a-saidcluster-com.id}"
}

resource "aws_route" "private-us-east-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2b-saidcluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2b-saidcluster-com.id}"
}

resource "aws_route" "private-us-east-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-east-2c-saidcluster-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-east-2c-saidcluster-com.id}"
}

resource "aws_route53_record" "api-saidcluster-com" {
  name = "api.saidcluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-saidcluster-com.dns_name}"
    zone_id                = "${aws_elb.api-saidcluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z38XOSM6W3G18M"
}

resource "aws_route53_record" "bastion-saidcluster-com" {
  name = "bastion.saidcluster.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-saidcluster-com.dns_name}"
    zone_id                = "${aws_elb.bastion-saidcluster-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z38XOSM6W3G18M"
}

resource "aws_route53_zone_association" "Z38XOSM6W3G18M" {
  zone_id = "/hostedzone/Z38XOSM6W3G18M"
  vpc_id  = "${aws_vpc.saidcluster-com.id}"
}

resource "aws_route_table" "private-us-east-2a-saidcluster-com" {
  vpc_id = "${aws_vpc.saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "private-us-east-2a.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/kops/role"               = "private-us-east-2a"
  }
}

resource "aws_route_table" "private-us-east-2b-saidcluster-com" {
  vpc_id = "${aws_vpc.saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "private-us-east-2b.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/kops/role"               = "private-us-east-2b"
  }
}

resource "aws_route_table" "private-us-east-2c-saidcluster-com" {
  vpc_id = "${aws_vpc.saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "private-us-east-2c.saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/kops/role"               = "private-us-east-2c"
  }
}

resource "aws_route_table" "saidcluster-com" {
  vpc_id = "${aws_vpc.saidcluster-com.id}"

  tags = {
    KubernetesCluster                       = "saidcluster.com"
    Name                                    = "saidcluster.com"
    "kubernetes.io/cluster/saidcluster.com" = "owned"
    "kubernetes.io/kops/role"               = "public"
  }
}

resource "aws_route_table_association" "private-us-east-2a-saidcluster-com" {
  subnet_id      = "${aws_subnet.us-east-2a-saidcluster-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2a-saidcluster-com.id}"
}

resource "aws_route_table_association" "private-us-east-2b-saidcluster-com" {
  subnet_id      = "${aws_subnet.us-east-2b-saidcluster-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2b-saidcluster-com.id}"
}

resource "aws_route_table_association" "private-us-east-2c-saidcluster-com" {
  subnet_id      = "${aws_subnet.us-east-2c-saidcluster-com.id}"
  route_table_id = "${aws_route_table.private-us-east-2c-saidcluster-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2a-saidcluster-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2a-saidcluster-com.id}"
  route_table_id = "${aws_route_table.saidcluster-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2b-saidcluster-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2b-saidcluster-com.id}"
  route_table_id = "${aws_route_table.saidcluster-com.id}"
}

resource "aws_route_table_association" "utility-us-east-2c-saidcluster-com" {
  subnet_id      = "${aws_subnet.utility-us-east-2c-saidcluster-com.id}"
  route_table_id = "${aws_route_table.saidcluster-com.id}"
}

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
