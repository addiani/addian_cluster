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