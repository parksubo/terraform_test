terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {
  # Configuration options
}

resource "local_file" "foo" {
  filename = "${path.module}/foo.bar"
  content  = "Hello World Test!"
}

data "local_file" "foo" {
  filename = "${path.module}/foo.bar"
}

output "file_bar" {
    value = data.local_file.foo
}