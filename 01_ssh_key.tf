#
# Exportamos nuestra key SSH

resource "digitalocean_ssh_key" "maxi" {
  name       = "maxi"
  public_key = "${file("id_rsa.pub")}"
}

