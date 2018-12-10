provider "ad" {
  domain           = "${var.ad_server}"
  ip               = "${var.ad_server_domain}"
  user             = "${var.user}"
  password         = "${var.password}"
}

resource "ad_computer" "myserver" {
 computer_name="${var.computer_name}"
 domain="${var.computer_name}"
}
