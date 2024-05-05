terraform {
	backend "local" {
		path = "/.terraform.tfstate"
	}
}

resource "local_file" "hello_world" {
	filename = var.filename
	content = <<-EOT
	#!/usr/bin/env python
	def greet():
		return "${var.przywitanie}"
	print(greet())
	
	EOT
}
