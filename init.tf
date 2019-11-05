terraform {
  backend "local" {
    path = "aaa.tfstate"
  }
}

resource "random_id" "ad-bump" {
  byte_length = 4
}

output "ad-bump" {
  value = "${random_id.ad-bump.dec}"

}
