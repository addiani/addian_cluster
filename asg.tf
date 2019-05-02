
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
  max_size             = "${var.node_max_size}"
  min_size             = "${var.bastion_min_size}"
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
  max_size             = "${var.node_max_size}"
  min_size             = "${var.node_min_size}"
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



resource "aws_launch_configuration" "bastions-saidcluster-com" {
  name_prefix                 = "bastions.saidcluster.com-"
  image_id                    = "${var.image_id}"
  instance_type               = "${var.bastion_instance_type}"
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
  image_id                    = "${var.image_id}"
  instance_type               = "${var.master_instance_type}"
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
  image_id                    = "${var.image_id}"
  instance_type               = "${var.master_instance_type}"
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
  image_id                    = "${var.image_id}"
  instance_type               = "${var.master_instance_type}"
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
  image_id                    = "${var.image_id}"
  instance_type               = "${var.node_instance_type}"
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
