terraform {
  required_version = ">= 0.14"
  required_providers {
    sym = {
      source  = "terraform.symops.com/symopsio/sym"
      version = ">= 0.1.14, < 2.0.0"
    }
  }
}
