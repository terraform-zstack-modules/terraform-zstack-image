# modules/zstack-image/examples/create_image/main.tf


terraform {
  required_providers {
    zstack = {
      source  = "zstack-robot/zstack"
      version = "1.0.5"
    }
  }
}

provider "zstack" {
  host             = "172.30.3.3"
  account_name     = "admin"
  account_password = "password"
}


module "this" {
  source = "../.."

  context = {
    project = {
      "name" = "project_name"
      "id"   = "project_id"
    }
    environment = {
      "name" = "environment_name"
      "id"   = "environment_id"
    }
    resource = {
      "name" = "resource_name"
      "id"   = "resource_id"
    }
  }
}

output "project_name" {
  value = module.this.walrus_project_name
}

output "environment_name" {
  value = module.this.walrus_environment_name
}

output "resource_name" {
  value = module.this.walrus_resource_name
}



module "zstack_image" {
  source = "../../"

  create_image       = true
  image_name         = "qalogserver_test"
  image_url          = "http://192.168.200.100/mirror/jiajian.chi/os/qalogerver.qcow2"
  guest_os_type      = "Centos 7"
  platform           = "Linux"
  format             = "qcow2"
  architecture       = "x86_64"
  backup_storage_name = "bs"
  expunge = true
}

output "image_uuid" {
  value = module.zstack_image.image_uuid
}

