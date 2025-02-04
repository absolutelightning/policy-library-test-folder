// Copyright (c) HashiCorp, Inc.
// SPDX-License-Identifier: BUSL-1.1

import "module" "report" {
  source = "./modules/report/report.sentinel"
}

import "module" "tfresources" {
  source = "./modules/tfresources/tfresources.sentinel"
}

policy "s3-policy" {
  source = "./policies/s3/s3-block-public-access-account-level.sentinel"
  enforcement_level = "advisory"
}

policy "ec2-policy" {
  source = "./policies/ec2/ec2-ebs-encryption-enabled.sentinel"
  enforcement_level = "advisory"
}
