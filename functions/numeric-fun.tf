/*
Numeric Functions: Crunching the Numbers
These functions perform mathematical operations, essential for calculations like instance counts, sizes, or limits.

abs(number): Returns the absolute value.
ceil(number): Rounds up to the nearest whole number.
floor(number): Rounds down to the nearest whole number.
max(n1, n2, ...): Returns the largest number.
min(n1, n2, ...): Returns the smallest number.
pow(base, exponent): Calculates base to the power of exponent.
parseint(string, base): Parses a string into an integer of a given base.
*/
locals {
  instance_count_raw = "3.7"
  # Ensure a whole number of instances, always rounding up
  desired_instances  = ceil(tonumber(local.instance_count_raw)) // Result: 4

  # Determine the maximum disk size from multiple inputs
  disk_options       = [60, 100, var.custom_disk_size]
  max_disk_size      = max(local.disk_options...)

  # Parse a hexadecimal instance ID suffix to an integer
  id_suffix_hex      = "A1"
  id_suffix_int      = parseint(local.id_suffix_hex, 16) // Result: 161
}

variable "custom_disk_size" {
  type    = number
  default = 80
}

output "desired_instances" {
  value = local.desired_instances
}

output "max_disk_size" {
  value = local.max_disk_size
}

output "id_suffix_int" {
  value = local.id_suffix_int
}