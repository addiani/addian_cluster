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
