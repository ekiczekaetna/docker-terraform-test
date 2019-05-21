#!/bin/sh
cd /go/src/mycode/test
dep init
dep ensure -add github.com/gruntwork-io/terratest/modules/terraform
go test -v -run TestTerraform
