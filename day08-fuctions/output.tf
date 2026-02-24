output "bucket-name" {
  value = local.my-s3-bucker-name
}

output "port-list" {
  value = local.port-lists
}

output "sg-rules-lists" {
  value = local.sg_rules
}

output "instance_size" {
  value = local.instance-size-by-env
}
