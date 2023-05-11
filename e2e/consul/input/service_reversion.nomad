# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "service" {
  type = string
}

job "service-reversion" {
  datacenters = ["dc1"]
  type        = "service"

  constraint {
    attribute = "${attr.kernel.name}"
    value     = "linux"
  }

  group "sleep" {

    service {
      name = "${var.service}"
    }

    task "busybox" {
      driver = "docker"

      config {
        image   = "busybox:1"
        command = "sleep"
        args    = ["infinity"]
      }

      resources {
        cpu    = 16
        memory = 32
        disk   = 64
      }
    }
  }
}