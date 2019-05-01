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