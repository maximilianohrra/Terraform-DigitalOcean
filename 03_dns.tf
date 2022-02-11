# Creamos un dominio nuevo

resource "digitalocean_domain" "maxi" {
  name = "maxi.com"
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.maxi.name}"
  type   = "A"
  name   = "maxi"
  ttl    = "10"
  value  = "${digitalocean_droplet.web.ipv4_address}"
}

