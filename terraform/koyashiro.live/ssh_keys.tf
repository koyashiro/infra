data "http" "ssh_key" {
  url = "https://github.com/koyashiro.keys"
}

resource "vultr_ssh_key" "ssh_key" {
  name    = "koyashiro"
  ssh_key = data.http.ssh_key.response_body
}
