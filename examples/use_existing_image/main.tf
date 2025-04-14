# modules/zstack-image/examples/use_existing_image/main.tf

terraform {
  required_providers {
    zstack = {
      source  = "zstack-robot/zstack"
      version = "1.0.5"
    }
  }
}

provider "zstack" {
  host             = "x.x.x.x"
  account_name     = "admin"
  account_password = "password"
}


module "zstack_image" {
  source = "../../"
  create_image       = false
  image_name         = "Ubuntu20.04_base"
}

output "image_uuid" {
  value = module.zstack_image.image_uuid
}
