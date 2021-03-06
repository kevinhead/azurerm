variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "lab_name" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "resource_group_name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "subnet" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      name                            = string
      use_in_virtual_machine_creation = string
      use_public_ip_address           = string
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      read   = string
      update = string
    }
  ))
  default = []
}

