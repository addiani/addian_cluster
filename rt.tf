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

