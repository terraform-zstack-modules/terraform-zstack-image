#
# Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}

# modules/zstack-image/variables.tf


variable "image_name" {
  type = string
}

variable "image_url" {
  type    = string
  default = ""
}

variable "guest_os_type" {
  type    = string
  default = ""
}

variable "platform" {
  type    = string
  default = ""
}

variable "format" {
  type    = string
  default = ""
}

variable "architecture" {
  type    = string
  default = ""
}

variable "backup_storage_name" {
  type    = string
  default = ""
}

variable "create_image" {
  type    = bool
  default = false
}

