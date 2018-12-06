provider "ad" {
  domain           = "vsphereadmin"
  ip               = "10.136.54.175"
  user             = "admin"
  password         = "gsLab!23"
}

resource "ad_computer" "myserver" {
 computer_name="myserver"
 domain="vsphereadmin.com"
}

resource "ad_computer_to_ou" "myouserver" {
 computer_name="myouserver"
 ou_distinguished_name="ou=SubOU,ou=MyOrganizationalUnit,dc=vsphereadmin,dc=com"
}


